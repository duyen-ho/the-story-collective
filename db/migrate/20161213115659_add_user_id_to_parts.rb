class AddUserIdToParts < ActiveRecord::Migration[5.0]
  def change
    add_reference :parts, :user, foreign_key: true
  end
end
