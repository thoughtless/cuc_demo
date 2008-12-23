When /^I go to "(.*)"$/ do |page|
  url = case page
  when 'the home page'
    '/'
  else
    page
  end
  visit url
end

