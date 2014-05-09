require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "SocialTokenizer" do
  it 'should return correct version string' do
    SocialTokenizer.version_string.should == "SocialTokenizer version #{SocialTokenizer::VERSION}"
  end
end
