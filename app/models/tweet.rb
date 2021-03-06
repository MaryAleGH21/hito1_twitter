class Tweet < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  has_many :likes
  has_many :retweets, class_name: "Tweet", foreign_key: "retweet_id"
  belongs_to :retweet, class_name: "Tweet", optional: true

end
