Given(/^voy a la pantalla principal$/) do
  visit "/"
end

Then(/^debe decir "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/n
end

