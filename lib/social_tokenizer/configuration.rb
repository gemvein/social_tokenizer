module SocialTokenizer
  def self.configure(configuration = SocialTokenizer::Configuration.new)
    if block_given?
      yield configuration
    end
    @@configuration = configuration
  end
  
  def self.configuration
    @@configuration ||= SocialTokenizer::Configuration.new
  end
  
  class Configuration
    attr_accessor :token_types
    
    def initialize
      self.token_types = [
          { pattern: /\+(.*)/, replacement: '\1', key: :rate_up },
          { pattern: /\-(.*)/, replacement: '\1', key: :rate_down },
          { pattern: />(.*)/, replacement: '\1', key: :message },
          { pattern: /^(.*)/, replacement: '\1', key: :group },
          { pattern: /:(.*)/, replacement: '\1', key: :carbon },
          { pattern: /@(.*)/, replacement: '\1', key: :mention },
          { pattern: /#(.*)/, replacement: '\1', key: :tag },
          { pattern: /(https:\/\/.*)/, replacement: '\1', formatter: :link, key: :secure_link },
          { pattern: /(http:\/\/.*)/, replacement: '\1', key: :link }
      ]
    end
  end
end