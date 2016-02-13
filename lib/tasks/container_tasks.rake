namespace :docker_tasks do
  desc "will run migrations and start rails server"
  task migrate_and_start: :environment do
	Rake::Task['db:migrate'].invoke
	`rails s`
  end

end
