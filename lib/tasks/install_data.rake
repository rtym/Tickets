namespace :generate_data do
  task :tickets => :environment do
    Ticket.create!([
                    {:reporter => "Reporter 1", :email => "reporter1@test.com", :content => "Test data"},
                    {:reporter => "Reporter 2", :email => "reporter2@test.com", :content => "Test data"}
                    ])
  end
end