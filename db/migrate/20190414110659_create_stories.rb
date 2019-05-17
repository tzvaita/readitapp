class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories, force:false do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
