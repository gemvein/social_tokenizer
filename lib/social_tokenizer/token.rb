module SocialTokenizer
  class Token
    include ActiveModel::Model
    include ActiveModel::Validations
    attr_accessor :token_type, :value
    validates_presence_of :token_type, :value
    def replaced_value
      value.gsub(token_type.pattern, token_type.replacement)
    end
    def format(format_name=:text)
      request.format = format_name
      respond_to do |format|

      end
    end
  end
end