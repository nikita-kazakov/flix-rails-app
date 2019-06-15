module MoviesHelper

  def format_total_gross(movie)
    if movie.flop?
      #"<strong>FLOP</strong>".html_safe <--one alternative
      content_tag(:strong, "FLOP")
    else
      number_to_currency(movie.total_gross)
    end
  end

  def image_for(movie)
    if movie.image_file_name.blank?
      image_tag('placeholder.jpg', class: "d-flex mr-3")
    else
      image_tag(movie.image_file_name, class: "d-flex mr-3")
    end
  end

  def format_average_stars(movie)
    if movie.average_stars.nil?
      content_tag(:span, "No Reviews")
    else
      pluralize(number_with_precision(movie.average_stars, precision: 1) , 'star')
    end
  end

  def number_of_reviews(movie)
    if movie.reviews.any?
      movie.reviews.count
    else
      "No Reviews".html_safe
    end
  end

end
