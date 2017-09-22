class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :group, index: true
      t.belongs_to :profile, index:true

      t.timestamps
    end
  end
end
