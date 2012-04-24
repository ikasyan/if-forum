class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :nick
      t.string :gender
      t.date :birthdate
      t.string :city
      t.string :public_email

      t.timestamps
    end
  end
end
