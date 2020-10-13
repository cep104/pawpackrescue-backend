class AddImgSrcToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :img_src, :string
  end
end
