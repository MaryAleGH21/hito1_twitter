class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.string :photo
      t.integer :likes
      t.string :retweets

      t.timestamps
    end
  end
end
