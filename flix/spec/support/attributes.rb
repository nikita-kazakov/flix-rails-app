#This allows you to over-ride hashes within your specs.
def movie_attributes(overrides = {})
  {
      title: "Iron Man",
      description: "Tony Stark builds an armored suit to fight the throes of evil",
      rating: "PG-13",
      released_on: "2015-05-02",
      total_gross: 818412101.00,
      cast: "Robert Downey Jr",
      director: "Jon Favreau",
      duration: 150,
      image_file_name: "misc.png"
  }.merge(overrides)
end


#Add other attributes to the above spec file.