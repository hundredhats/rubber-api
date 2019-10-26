FactoryBot.define do
  factory :recording do
    sequence(:name) {|n| "Recording #{n}" }
    sequence(:url) {|n| "example.com/#{n}.mp4" }
  end
end
