namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [Book].each(&:delete_all)
      Book.populate 100 do |book|
        book.name = Faker::Company.name
        book.description = Faker::Lorem.paragraph
      end
  end
end