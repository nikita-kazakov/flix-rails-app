#This allows you to over-ride hashes within your specs.
def movie_attributes(overrides = {})
  {
      title: "Iron Man",
      description: "Tony Stark builds an armored suit to fight the throes of evil",
      rating: "PG-13",
      total_gross: 818412101.00,
      released_on: "2015-05-02",
      duration: 150
  }.merge(overrides)
end