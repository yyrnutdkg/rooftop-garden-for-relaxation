namespace :seed_fu_gen do
  desc 'generate seed-fu file for place by db'
  task create_place_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/place_gen.rb', class_name: 'Place') do |w|
      Place.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
end
