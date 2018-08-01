Review.delete_all
Test.delete_all
User.delete_all

puts "Generating Users and Tests"
emails = %w(rayancdc@gmail.com riza@testae.com edu@testae.com fe@testae.com admin@testae.com wagon@wagon.com john@gmail.com amelia@yahoo.com.br julia@gmail.com natalia@gmail.com)
emails.each do |email|
  new_user = User.create!(email: email, password: "testae")
  2.times do
    new_test = new_user.tests.build(description: Faker::HitchhikersGuideToTheGalaxy.quote, website: Faker::Internet.url, review_price_cents: rand(500), issue_price_cents: 2000 + rand(2000), status: false)
    new_test.save
  end
end

puts "You have now #{User.all.size} users and #{Test.all.size} tests."
puts "Generating reviews..."
Test.all.each do |test|
  10.times do
    user = User.all.sample
    if user != test.owner
      new_review = test.reviews.build(user_agent: Faker::Internet.user_agent, issue_description: Faker::HowIMetYourMother.quote, issue_score: rand(5))
      new_review.user = user
      new_review.save
    end
  end
end
puts "You have now a total of #{Review.all.size} reviews."
