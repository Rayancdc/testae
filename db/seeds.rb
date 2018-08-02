Review.delete_all
Test.delete_all
User.delete_all

COMPANIES = %w(iFood Spotify Meliuz Itau Airbnb HortaLab Rappi Supercell Google Facebook Bradesco TripAdvisor NuBank sAppiens)
NAME = %w(Usability UX UI Mobile-only Urgent)

puts "Generating Users and Tests"
EMAILS = %w(rayancdc@gmail.com riza@testae.com edu@testae.com fe@testae.com admin@testae.com wagon@wagon.com john@gmail.com amelia@yahoo.com.br julia@gmail.com natalia@gmail.com)
EMAILS.each do |email|
  new_user = User.create!(email: email, password: "testae")
  2.times do
    company = COMPANIES.sample
    test_params = { company: company,
                    name: NAME.sample,
                    intro: Faker::SiliconValley.quote,
                    description: Faker::Lorem.paragraph(3),
                    website: "www.#{company}.com",
                    review_price_cents: rand(500),
                    issue_price_cents: 2000 + rand(2000)
                  }
    new_test = new_user.tests.build(test_params)
    new_test.save
  end
end

puts "You have now #{User.all.size} users and #{Test.all.size} tests."
puts "Generating reviews..."
Test.all.each do |test|
  5.times do
    user = User.all.sample
    if user != test.owner
      review_params = { user_agent: Faker::Internet.user_agent,
                        issue_description: Faker::Lorem.paragraph(3),
                        issue_score: rand(5)
                      }
      new_review = test.reviews.build(review_params)
      new_review.user = user
      new_review.save
    end
  end
end
puts "You have now a total of #{Review.all.size} reviews."

