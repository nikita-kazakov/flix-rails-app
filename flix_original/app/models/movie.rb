class Movie < ApplicationRecord

  def flop?
    self.total_gross.blank? || self.total_gross < 50000000
  end

end
