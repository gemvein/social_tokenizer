module SocialTokenizer
  class Tokenizer < ::Tokenizer::Tokenizer
    def social_tokenize(string)
      for token_string in self.tokenize(string)
        SocialTokenizer::TokenType.check_all(token_string)
      end

      SocialTokenizer::TokenType.all
    end

    def social_format(string, format_name=:text)
      token_types = social_tokenize(string)
      token_types.values do |tokens|
        for token in tokens
          string.tr!(token.value, token.format(format_name))
        end
      end
      string
    end
  end
end