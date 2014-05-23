module SocialTokenizer
  class TokenType
    include ActiveModel::Model
    include ActiveModel::Validations

    attr_accessor :pattern, :replacement, :key, :formatter, :tokens
    validates_presence_of :pattern, :replacement, :key

    def initialize(attributes)
      super attributes
      self.tokens = []
    end

    def self.all
      results = {}
      ObjectSpace.each_object(self) do |token_type|
        results[token_type.key] = token_type.tokens
      end
      results
    end

    def check_token(token_string)
      if pattern.is_a? Array
        for sub_pattern in pattern
          if token_string =~ sub_pattern
            self.tokens << SocialTokenizer::Token.new(token_type: self, value: token_string)
          end
        end
      else
        if token_string =~ pattern
          self.tokens << SocialTokenizer::Token.new(token_type: self, value: token_string)
        end
      end
    end

    def self.check_all(token_string)
      ObjectSpace.each_object(self) do |token_type|
        token_type.check_token(token_string)
      end
    end
  end
end