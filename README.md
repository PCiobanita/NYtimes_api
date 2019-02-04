# NYtimes_api
# weather_api

### Description
This is an application that calls movie reviews from NYTimes api. It takes the name it has been insterted and find matches that contains that name. It retrives maximum 20 movie reviews

### Languages used
* Ruby

### Testing frameworks
* RSpec

### How to download
1. https://github.com/PCiobanita/NYtimes_api
2. Follow the link, select DEV brach and clone the project.

## How to use the project
*  In terminal change directory to NYtimeAPI directory folder
*  In terminal run ```bundle install``` to install the gems dependencies from gemfile

### How to use
1. First you will need to create an account and get an api key from https://developer.nytimes.com/

2. In the root directory NYtimeAPI create a new file and call it ```.env```. In the env create a variable called API_KEY and assign it your api key```API_KEY=your api key``` 

3. In the NYTimesio.rb file from lib directory create a new instance of the class and method ```movie = NYtimes.new.movie_review```. For the class instance run retrieve_movie_review method and give as parameter name of movie
```
movie.retrieve_movie_review('name+of+the+movie', ENV['API_KEY'])
``` 
if the string you want to check donsists of more that one word you will need to replace the spaces between words with 
```+```

4. If you would like to assess the quality of the data run rspec in your terminal for running tests on retrieved data





