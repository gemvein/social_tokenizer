module SocialTokenizer
  VERSION = File.read(File.expand_path('../../../VERSION', __FILE__))
  
  def self.version_string
    "SocialTokenizer version #{SocialTokenizer::VERSION}"
  end
end
