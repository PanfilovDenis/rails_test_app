class Person < ActiveRecord::Base
  attr_accessible :birth_date, :full_name, :gender
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
