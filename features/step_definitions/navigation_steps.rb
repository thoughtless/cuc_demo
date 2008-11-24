When /^I go to "(.*)"$/ do |page|
  url = case page
  when 'the home page'
    '/'
  else
    page
  end
  visits url
end

