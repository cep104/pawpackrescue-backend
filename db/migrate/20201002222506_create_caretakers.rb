class CreateCaretakers < ActiveRecord::Migration[6.0]
  def change
    create_table :caretakers do |t|
      t.string :name
      t.string :location
      t.string :setting

      t.timestamps
    end
  end
end
