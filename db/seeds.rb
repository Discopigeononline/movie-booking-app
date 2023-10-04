require "json"
require "open-uri"

Movie.destroy_all

url = "https://api.themoviedb.org/3/movie/now_playing?api_key=#{ENV["MOVIE_API"]}"
    serialized = URI.open(url).read
    data = JSON.parse(serialized)

    movies = data['results']

    movies.each { |movie| Movie.create!(title: movie["title"], description: movie["overview"], image: "https://image.tmdb.org/t/p/w200/#{movie['poster_path']}")
    }
