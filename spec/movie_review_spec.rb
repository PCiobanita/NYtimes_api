require_relative 'spec_helper'

describe NYtimes do 

  before(:all) do 
    @movie_review = NYtimes.new.movie_review
    @movie_review.retrieve_movie_review('inception',ENV['API_KEY'])
  end

  it 'should retrieve data and have status as "OK" ' do
    expect(@movie_review.retrieve_status).to eq "OK"
  end
  
  it 'should have copyright in form of string' do 
    expect(@movie_review.retrieve_copyright).to be_kind_of(String)
  end
  
  it 'should retrieve a boolean weaether there are more results with that name' do
    expect(@movie_review.retrieve_more_movies).to be(true) | be(false)
  end
  
  it 'should retrieve how many results did it find with that name in form of an integer' do
    expect(@movie_review.retrieve_number_of_results).to be_kind_of(Integer)
  end
  
  it 'should retrive at least one result' do
    expect(@movie_review.retrieve_number_of_results).to be >= 1
  end

  it 'should retrieve the results in an array of hashes' do
    expect(@movie_review.retrieve_results).to be_kind_of(Array)
  end

  it 'should get the name of the movie in string form' do
    @movie_review.retrieve_display_title.each do |title|
     expect(title).to be_kind_of(String)
    end
  end

  it 'should retrieve the rating of the movie in string form' do
    @movie_review.retrieve_mpaa_rating.each do |rating|
     expect(rating).to be_kind_of(String)
    end
  end

  it 'should retrieve the criticks picks in integer form. It can be 0 or 1' do
    @movie_review.retrieve_critics_picks.each do |pick|
     expect(pick).to be_kind_of(Integer)
     expect(pick).to be_between(0, 1)
    end
  end

  it 'should rget the name of the article writter in string form' do
    @movie_review.retrieve_article_writter.each do |name|
     expect(name).to be_kind_of(String)
    end
  end

  it 'should rget the name of the article writter in string form' do
    @movie_review.retrieve_article_writter.each do |name|
     expect(name).to be_kind_of(String)
    end
  end

  it 'should retrive headline sentence in form of string' do
    @movie_review.retrieve_headline.each do |headline|
     expect(headline).to be_kind_of(String)
    end
  end

  it 'should retrive a summary of the movie in form of string' do
    @movie_review.retrieve_summary_short.each do |summary|
     expect(summary).to be_kind_of(String)
    end
  end

  it 'should retrive publication date of movie in form of string' do
    @movie_review.retrieve_publication_date.each do |date|
     expect(date).to be_kind_of(String)
    end
  end

  it 'publication date should be a valid date format' do
    @movie_review.retrieve_publication_date.each do |date|
     expect(DateTime.parse(date)).to be_an_instance_of(DateTime)
    end
  end

  it 'should retrive opening date of movie in form of string' do
    @movie_review.retrieve_opening_date.each do |date|
     expect(date).to be_kind_of(String)
    end
  end

  it 'opening date should be a valid date format' do
    @movie_review.retrieve_opening_date.each do |date|
     expect(DateTime.parse(date)).to be_an_instance_of(DateTime)
    end
  end

  it 'should retrive date updated of movie in form of string' do
    @movie_review.retrieve_date_updated.each do |date|
     expect(date).to be_kind_of(String)
    end
  end

  it 'date updated should be a valid date format' do
    @movie_review.retrieve_date_updated.each do |date|
     expect(DateTime.parse(date)).to be_an_instance_of(DateTime)
    end
  end

  it 'should retrive and object that has link details' do
    @movie_review.retrieve_link.each do |link|
     expect(link).to be_kind_of(Hash)
    end
  end

  it 'sshould retrive an url in form of string' do
    @movie_review.retrieve_url.each do |url|
     expect(url).to be_kind_of(String)
    end
  end

  it 'sshould start with a valid url adress http' do
    @movie_review.retrieve_url.each do |url|
     expect(url).to start_with("http")
    end
  end


end