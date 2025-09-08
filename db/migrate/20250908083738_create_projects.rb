class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :image_path

      t.timestamps
    end
  end
end
