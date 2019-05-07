class Movie < ApplicationRecord

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

end
