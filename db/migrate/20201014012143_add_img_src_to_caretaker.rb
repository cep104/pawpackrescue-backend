class AddImgSrcToCaretaker < ActiveRecord::Migration[6.0]
  def change
    add_column :caretakers, :img_src, :string
  end
end
