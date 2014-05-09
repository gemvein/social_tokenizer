SocialTokenizer.configure do |config|
  # Array of each token type that should be extracted.
  # Each token type is a Hash that takes the following:
  # - pattern: string/regex (matches against the whole word)
  # - replacement: string
  # - key: symbol
  # - formatter: symbol (defaults to key, above)
  config.token_types += [
      { pattern: /https?:\/\/(.*\.(jpg|jpeg|gif|png|svg))/, replacement: '\1', key: :image }
  ]
end