FactoryBot.define do
  factory :task do
    store { 'ローソン' }
    name { 'お肉' }
    protein { 100 }
    calorie { 100 }
    price { 100 }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, "/public/lawson/6002.png"))}
    user
  end
end
