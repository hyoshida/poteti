class CreateActiveAdminComments < ActiveRecord::Migration
  def self.up
    create_table :active_admin_comments do |t|
      t.string :namespace
      t.text :body
      t.string :resource_id, null: false
      t.string :resource_type, null: false
      t.references :author, polymorphic: true
      t.timestamps

      t.index [:namespace]
      t.index [:author_type, :author_id]
      t.index [:resource_type, :resource_id]
    end
  end

  def self.down
    drop_table :active_admin_comments
  end
end
