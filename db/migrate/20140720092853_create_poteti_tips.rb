class CreatePotetiTips < ActiveRecord::Migration
  def change
    create_table :poteti_tips do |t|
      t.references :user
      t.string :title
      t.text :body, null: false
      t.timestamps
    end
  end
end
