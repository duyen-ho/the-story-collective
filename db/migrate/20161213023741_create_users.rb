class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.string :email
      t.text :password_digest
      t.text :photo_url
      t.text :description

      t.timestamps
    end
  end
end
