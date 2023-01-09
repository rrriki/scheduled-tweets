# Scheduled Tweets

  
This is a small project to learn the basics of Ruby on Rails.

It's a small app, that allows to register users, associate Twitter accounts using OmniAuth, and schedule tweets to be posted at a certain time using a background job through Sidekiq.  

It was made following [this tutorial](https://www.youtube.com/playlist?list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56) from [@excid3](@https://github.com/excid3)

## Getting started

Use bundle to install the dependencies and start the server

```sh
bundle install
rails server
```
You can then visit the UI at [localhost:3000](http://localhost:3000)

You can use the `rails console` command and `bundle exec sidekiq` to test the job (assuming you have created a tweet previously)

```sh 
> TweetJob.perform_later(Tweet.last)
 ```
