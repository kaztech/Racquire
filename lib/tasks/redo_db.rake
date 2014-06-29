PROJECT_ROOT = Rails.root

namespace :db do
  task :redo => :environment do
    system "cd #{PROJECT_ROOT} && rake db:drop && rake db:create && rake db:migrate && rake db:seed && rake db:test:prepare"
  end
end
