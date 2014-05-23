module SocialTokenizer
  class Tokenizer < ::Tokenizer::Tokenizer

    def social_tokenize(string)
      for token_string in self.tokenize(string)
        SocialTokenizer::TokenType.check_all(token_string)
      end

      SocialTokenizer::TokenType.all
    end
  end
end