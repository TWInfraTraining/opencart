When /^I search for "(.*)"$/ do |value|
   visit("#{ENV["BASE_URL"]}/index.php?route=product/search&filter_name=#{value}")
end

When /^I follow "(.*)"$/ do |link|
  click_link(link)
end

# Results
Then /^I should see "(.*)"$/ do |text|
  response_body.to_s.should =~ /#{text}/m
end

Then /^I should not see "(.*)"$/ do |text|
  response_body.to_s.should_not =~ /#{text}/m
end

Then /^the (.*) ?request should succeed/ do |_|
  success_code?.should be_true
end

Then /^the (.*) ?request should fail/ do |_|
  success_code?.should be_false
end
