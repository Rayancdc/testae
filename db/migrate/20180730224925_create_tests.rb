class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text :description
      t.string :website
      t.integer :review_price_cents
      t.integer :issue_price_cents
      t.boolean :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
