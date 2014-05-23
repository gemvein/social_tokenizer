require 'tokenizer'
require 'uri'
require 'active_model'

require 'social_tokenizer/token_type'
require 'social_tokenizer/configuration'
require 'social_tokenizer/version'
require 'social_tokenizer/token'
require 'social_tokenizer/tokenizer'
require 'social_tokenizer/formatters'

SocialTokenizer::TokenType.new(pattern: /^>(.*)$/, replacement: '\1', key: :message)
SocialTokenizer::TokenType.new(pattern: /^\^(.*)$/, replacement: '\1', key: :group)
SocialTokenizer::TokenType.new(pattern: /^:([a-z0-9].*)$/, replacement: '\1', key: :carbon)
SocialTokenizer::TokenType.new(pattern: /^@(.*)$/, replacement: '\1', key: :mention)
SocialTokenizer::TokenType.new(pattern: /^#(.*)$/, replacement: '\1', key: :tag)

class String
  def social_tokenizer
    SocialTokenizer::Tokenizer.new(SocialTokenizer.configuration.lang).social_tokenize(self)
  end
end