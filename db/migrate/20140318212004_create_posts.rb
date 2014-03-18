class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :header
      t.string :body

      t.timestamps
    end
  end
end
