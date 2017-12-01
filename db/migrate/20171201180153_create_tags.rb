class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :tag
      t.integer :project_id

      t.timestamps
    end
  end
end
