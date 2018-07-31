class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :test, foreign_key: true
      t.references :user, foreign_key: true
      t.string :user_agent
      t.text :issue_description
      t.integer :issue_score
      t.string :image

      t.timestamps
    end
  end
end
