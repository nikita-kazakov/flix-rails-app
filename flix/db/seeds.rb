Movie.create!([
  {title: "Die Hard", rating: "R", total_gross: "50000.0", description: "John McLane spends a happy Christmas fighting germans.", released_on: "1993-05-04", cast: " Bruce Willis, Alan Rickman, Bonnie Bedelia ", director: "John McTiernan", duration: "121", image_file_name: "diehard.jpg"},
  {title: "Green Fried Tomatoes", rating: "PG-13", total_gross: "74000000.0", description: "A housewife who is unhappy with her life befriends an old lady in a nursing home and is enthralled by the tales she tells of people she used to know. ", released_on: "1995-05-06", cast: " Kathy Bates, Jessica Tandy, Mary Stuart Masterson", director: "Pedro Almodóvar", duration: "140", image_file_name: "green.jpg"},
  {title: "Water World", rating: "PG-13", total_gross: "100000000.0", description: "One man against a bunch of smokers.", released_on: "1998-05-06", cast: " Kevin Costner, Jeanne Tripplehorn, Dennis Hopper", director: "Kevin Reynolds", duration: "180", image_file_name: "waterworld.jpg"},
  {title: "Brat 2", rating: "R", total_gross: "70000000.0", description: "A brother avenges a brother in NYC and Chicago.", released_on: "2000-05-06", cast: " Sergey Bodrov, Viktor Sukhorukov, Sergey Makovetskiy", director: "Aleksey Balabanov", duration: "120", image_file_name: "brat2.jpg"},
  {title: "Looper", rating: "G", total_gross: "884000000.0", description: "A guy makes money and in 40 years goes back in time to be murdered by his younger self.", released_on: "1987-05-06", cast: "Joseph Gordon-Levitt, Bruce Willis, Emily Blunt", director: "Rian Johnson", duration: "120", image_file_name: "looper.jpg"},
  {title: "Total Recall", rating: "R", total_gross: "80000000.0", description: "Doug loves Mars.  He kills Benny the cab driver.  He invites Richter to the party and proceeds to rip his arms off. Hell of a good 2 hour watch.", released_on: "1995-05-06", cast: " Arnold Schwarzenegger, Sharon Stone, Michael Ironside", director: "Paul Verhooven", duration: "130", image_file_name: "totalrecall.jpg"}
])
Review.create!([
  {name: "Jim", stars: 4, comment: "great stuff", movie_id: 5, location: nil},
  {name: "Jim", stars: 5, comment: "Best movie Ever", movie_id: 5, location: nil},
  {name: "Laura", stars: 3, comment: "This movie kind of sucked.", movie_id: 5, location: nil},
  {name: "Jenna", stars: 2, comment: "Okay movie. Ruins Christmas.", movie_id: 5, location: nil},
  {name: "Jessie Parker", stars: 1, comment: "Meh, I've seen better.", movie_id: 5, location: nil},
  {name: "Jack", stars: 1, comment: "Russian dudes decide to visit the US.", movie_id: 9, location: nil},
  {name: "Jack", stars: 1, comment: "Russian dudes decide to visit the US.", movie_id: 9, location: nil},
  {name: "Jimmy P", stars: 5, comment: "Great Movie.  Involves Vodka.", movie_id: 9, location: nil},
  {name: "Yuri", stars: 4, comment: "What an exciting movie indeed!", movie_id: 9, location: nil}
])
