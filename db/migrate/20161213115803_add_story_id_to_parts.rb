class AddStoryIdToParts < ActiveRecord::Migration[5.0]
  def change
    add_reference :parts, :story, foreign_key: true
  end
end
