class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :full_name
      t.date :birth_date
      t.string :gender
      t.string :state
      t.timestamps
    end
  end
end
