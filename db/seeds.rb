Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |file| require file }

Seeds::Departments.create!
Seeds::Users.create!
Seeds::Proposals.create!
