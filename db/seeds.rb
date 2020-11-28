Dir[Rails.root.join('db/seeds/*.rb')].sort.each { |file| require file }
if User.count == 0
  Seeds::Departments.create!
  Seeds::Users.create!
  Seeds::Proposals.create!
end

Seeds::Directions.create!
