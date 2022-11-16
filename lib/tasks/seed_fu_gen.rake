namespace :seed_fu_gen do
  desc 'generate seed-fu file for place by db'
  task create_place_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/place_gen.rb', class_name: 'Place') do |w|
      Place.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for tag by db'
  task create_tag_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/tag_gen.rb', class_name: 'Tag') do |w|
      Tag.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for placetag by db'
  task create_place_tag_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/place_tag_gen.rb', class_name: 'PlaceTag') do |w|
      PlaceTag.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for store by db'
  task create_store_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/store_gen.rb', class_name: 'Store') do |w|
      Store.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
end
