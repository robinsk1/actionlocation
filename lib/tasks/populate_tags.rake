namespace :data do
  desc 'populate tags'
  task :populate_tags => :environment do
    list = ['tag 1', 'tag 2']
    list.each do |tag|
      ActsAsTaggableOn::Tag.new(:name => tag).save
    end
  end
end
