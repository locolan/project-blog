class CreateCommentAssociation < ActiveRecord::Migration
  def change
    add_column :article_id, :integer
  end
end
