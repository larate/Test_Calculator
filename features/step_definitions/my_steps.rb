Given(/^I have entered "([^"]*)" and "([^"]*)" into the calculator$/) do |num_1, num_2|
 @calc_1 = num_1.to_i
 @calc_2 = num_2.to_i

end

When(/^I press the operation "([^"]*)"$/) do |button|
  if button == "+"
    @result = @calc_1 + @calc_2
  elsif button == "-"
    @result = @calc_1 - @calc_2
  else
    puts "Invalid operation"

  end
end

Then(/^The result should be "([^"]*)" on the screen$/) do |output|
  @result.should  eq(output.to_i)
end