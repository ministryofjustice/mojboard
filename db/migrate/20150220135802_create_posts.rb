class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :posted_by
      t.string :headline
      t.text :detail

      t.timestamps
    end
  end
end
