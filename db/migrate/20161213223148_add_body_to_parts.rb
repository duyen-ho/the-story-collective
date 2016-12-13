class AddBodyToParts < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :body, :text
  end
end
