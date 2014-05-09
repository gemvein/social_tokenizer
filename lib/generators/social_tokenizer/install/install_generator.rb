module SocialTokenizer
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    require File.expand_path('../../utils', __FILE__)
    include Generators::Utils
    include Rails::Generators::Migration
    
    def hello
      output "Go Go SocialTokenizer Installer, Go!", :magenta
    end
    
    # all public methods in here will be run in order

    def add_initializer
      output "You probably won't need to configure anything, but you could, if that's your thing.", :magenta
      template "initializer.rb", "config/initializers/social_tokenizer.rb"
    end
  end
end