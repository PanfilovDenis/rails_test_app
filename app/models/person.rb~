class Person < ActiveRecord::Base
  attr_accessible :birth_date, :full_name, :gender
  full_name_regex_format = /([a-zA-Z])/   #Если у вас проблема, и вы ее решили с помощью regex, то у вас теперь две проблемы)
  validates :full_name, :presence => true, 
                        :length => {:maximum => 40}, 
                        :format => {:with => full_name_regex_format},
                        :uniqueness => true
  state_machine :state, :initial => :published do
  
    event :unpublish do
      transition all => :unpublished
    end

    event :delete do
      transition all => :deleted
    end

    event :publish do
      transition all => :published
    end

  end
end
