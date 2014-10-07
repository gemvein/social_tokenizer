Social Tokenizer
===========

[![Gem Version](https://badge.fury.io/rb/social_tokenizer.svg)](http://badge.fury.io/rb/social_tokenizer)
[![Build Status](https://travis-ci.org/gemvein/social_tokenizer.svg)](https://travis-ci.org/gemvein/social_tokenizer)
[![Coverage Status](https://coveralls.io/repos/gemvein/social_tokenizer/badge.png)](https://coveralls.io/r/gemvein/social_tokenizer)

Installation
------------
First, add the gem to your Gemfile

    gem 'social_tokenizer'

Next, run the following commands

    > bundle install
    > rails g social_tokenizer:install

Usage
-----

When chained onto the end of a string:

    string_to_tokenize = 'This string contains a @mention and a #tag.'
    hash_of_tokens = string_to_tokenize.social_tokenize

By accessing the object directly:

    lang = :de
    social_tokenizer = SocialTokenizer::Tokenizer.new(lang)
    hash_of_tokens = social_tokenizer.social_tokenize(self)

Special configuration
---------------------

Arbitrary token types can be defined in `initializers/social_tokenizer.rb` like this:

    SocialTokenizer::TokenType.new(pattern: /^\+(.*)$/, replacement: '\1', key: :rate_up)
    SocialTokenizer::TokenType.new(pattern: /^\-(.*)$/, replacement: '\1', key: :rate_down)


Contributing to Social Tokenizer
----------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
---------

Copyright (c) 2014 Gem Vein. See LICENSE.txt for further details.

