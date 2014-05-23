SocialTokenizer.configure do |config|
  # Symbol denoting language to use for tokenization. Implemented options are: :en, :fr, :de
  # config.lang = :en
end


# Here you can add any TokenTypes that should be added to the default set.
# Each token type is initialized with a Hash containing:
# - pattern: string/regex (matches against the whole word)
# - replacement: string
# - key: symbol
# - formatter: symbol (defaults to key, above)
# SocialTokenizer::TokenType.new(pattern: /^\+(.*)$/, replacement: '\1', key: :rate_up)
# SocialTokenizer::TokenType.new(pattern: /^\-(.*)$/, replacement: '\1', key: :rate_down)