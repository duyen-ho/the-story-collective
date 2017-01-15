class AddIsCompletedToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :is_completed, :boolean, default: false
  end
end
