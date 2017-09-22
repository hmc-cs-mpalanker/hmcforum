class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first
      t.string :last
      t.string :dorm
      t.string :year
      t.belongs_to :user, index:true


      t.timestamps
    end
  end
end
