FactoryBot.define do
  factory :recording do
    sequence(:name) { "Recording #{n}" }
    sequence(:url) { "example.com/#{n}.mp4" }
  end
end
