Given /^the String:$/ do |input|
  @input = input.to_s
end

When(/^I run the social_tokenizer method$/) do
  @output = @input.social_tokenizer
end

Then(/^the result should be a Hash with (\d+) key\-value pairs$/) do |num|
  expect(@output).to be_a Hash
  expect(@output.count).to be >= num.to_i
end

And(/^each of its keys should be a symbol denoting the type of social token$/) do
  @output.each_key do |key|
    expect(key).to be_a Symbol
  end
end

And(/^each of its values should be an Array of the corresponding social tokens$/) do
  @output.each_value do |tokens|
    expect(tokens).to be_an Array
    for token in tokens
      expect(token).to be_a SocialTokenizer::Token
      expect(token.replaced_value).to be_a String
    end
  end
end

And(/^the result should include:$/) do |table|
  table.rows_hash.each do |key,value|
    expect(@output[key.to_sym].map(&:replaced_value)).to include value
  end
end

