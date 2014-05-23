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
    attr_accessor :lang
    
    def initialize
      self.lang = :en
    end
  end
end
