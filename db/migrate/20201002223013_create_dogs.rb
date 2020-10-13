class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :breed
      t.boolean :house_trained
      t.string :good_with
      t.string :size
      t.text :bio
      t.string :medication
      t.integer :caretaker_id
      t.integer :user_id

      t.timestamps
    end
  end
end
