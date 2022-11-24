class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.string :link
      t.string :body

      t.timestamps
    end
  end
end
