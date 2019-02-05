require 'httparty'
require 'json'
require 'dotenv'
Dotenv.load('.env')

class MovieReview


  include HTTParty
  base_uri 'https://api.nytimes.com/svc/movies/v2/reviews'


  def retrieve_movie_review(movie_name, api_key)
    @movie_review = JSON.parse(self.class.get("/search.json?query=#{movie_name}&api-key=#{api_key}").body)
  end

  def retrieve_status
    @movie_review['status']
  end

  def retrieve_copyright
    @movie_review['copyright']
  end

  def retrieve_more_movies
    @movie_review['has_more']
  end

  def retrieve_number_of_results
    @movie_review['num_results']
  end

  def retrieve_results
    @movie_review['results']
  end

  def retrieve_display_title
    title_array = []
    retrieve_results.each do |title|
      title_array << title['display_title']
    end
    title_array
  end

  def retrieve_mpaa_rating
    mpaa_rating_array = []
    retrieve_results.each do |rating|
      mpaa_rating_array << rating['mpaa_rating']
    end
    mpaa_rating_array
  end

  def retrieve_critics_picks
    critics_pick_array = []
    retrieve_results.each do |pick|
      critics_pick_array << pick['critics_pick']
    end
    critics_pick_array
  end

  def retrieve_article_writter
    article_writter_name = []
    retrieve_results.each do |writter|
      article_writter_name << writter['byline']
    end
    article_writter_name
  end

  def retrieve_headline
    headline_array = []
    retrieve_results.each do |headline|
      headline_array << headline['headline']
    end
    headline_array
  end
  
  def retrieve_summary_short
    sumary_short = []
    retrieve_results.each do |summary|
      sumary_short << summary['headline']
    end
    sumary_short
  end

  def retrieve_publication_date
    publication_date_array = []
    retrieve_results.each do |date|
      publication_date_array << date['publication_date']
    end
    publication_date_array
  end

  def retrieve_opening_date
    opening_date_array = []
    retrieve_results.each do |date|
      opening_date_array << date['opening_date']
    end
    opening_date_array
  end

  def retrieve_date_updated
    date_updated_array = []
    retrieve_results.each do |date|
      date_updated_array << date['date_updated']
    end
    date_updated_array
  end

  def retrieve_link
    link_array = []
    retrieve_results.each do |link|
      link_array << link['link']
    end
    link_array
  end

  def retrieve_url
    url_array = []
    retrieve_link.each do |url|
      url_array << url['url']
    end
    url_array
  end

end
