class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, :released_on, :duration, presence: true
  validates :description, length:{minimum: 25}
  validates :total_gross, numericality: {greater_than_or_equal_to:0}
  validates :image_file_name, allow_blank: true, format: {
      with:    /\w+\.(gif|jpg|png)\z/i,
      message: "must reference a GIF, JPG, or PNG image"
  }

  RATINGS = ["G", "PG", "PG-13", "R", "NC-17"]
  validates :rating, inclusion: { in:RATINGS }


  def flop?
    self.total_gross.blank? || self.total_gross < 50000000
  end

  def self.released
    where("released_on <= ?", Time.now).order("released_on desc")
  end

  #This method lists most recently added movies.
  def self.recently_added
    order('created_at desc').limit(3)
  end

  def average_stars
    reviews.average(:stars)
  end

  def recent_reviews
    reviews.order('created_at desc').limit(2)

  end

end
