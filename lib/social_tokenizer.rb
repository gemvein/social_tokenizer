module SocialTokenizer
  require 'rails/all'
  require 'rails-i18n'

  require 'social_tokenizer/configuration'
  require 'social_tokenizer/railtie'
  require 'social_tokenizer/engine'
  require 'social_tokenizer/localization'
  require 'social_tokenizer/version'
  require 'social_tokenizer/formatters'

  require 'tokenizer'
  require 'haml-rails'
end