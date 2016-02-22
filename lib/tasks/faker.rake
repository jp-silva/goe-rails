require 'forgery'

namespace :faker do

  task :articles => :environment do
    desc 'Create some fake articles'
    99.times do |n|
      Article.create({
        :title => Forgery(:lorem_ipsum).words(10),
        :body => Forgery(:lorem_ipsum).words(100)
        })
      end
    end

  end
