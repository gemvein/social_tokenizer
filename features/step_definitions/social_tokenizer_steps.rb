Given /^the String:$/ do |input|
  @input = input.to_s
end

When(/^I run the social_tokenizer method$/) do
  @output = @input.social_tokenizer
end

Then(/^the result should be a Hash with (\d+) key\-value pairs$/) do |num|
  @output.should be_a Hash
  @output.should have_at_least(num).items
end

And(/^each of its keys should be a symbol denoting the type of social token$/) do
  @output.each_key do |key|
    key.should be_a Symbol
  end
end

And(/^each of its values should be an Array of the corresponding social tokens$/) do
  @output.each_value do |tokens|
    tokens.should be_an Array
    for token in tokens
      token.should be_a SocialTokenizer::Token
      token.replaced_value.should be_a String
    end
  end
end

And(/^the result should include:$/) do |table|
  table.rows_hash.each do |key,value|
    @output[key.to_sym].map(&:replaced_value).should include value
  end
end

When(/^formatting the String as (.*)$/) do |format|
  @format = format.to_sym
  @output = @input.social_formatter(@format)
end

Then(/^I should receive the String:$/) do |string|
  @output.should be_a String
  @output.should == string
end


