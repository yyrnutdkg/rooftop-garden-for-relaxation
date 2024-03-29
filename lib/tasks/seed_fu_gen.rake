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
  desc 'generate seed-fu file for event by db'
  task create_event_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/event_gen.rb', class_name: 'Event') do |w|
      Event.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for user by db'
  task create_user_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/user_gen.rb', class_name: 'User') do |w|
      User.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for place_user by db'
  task create_place_user_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/place_user_gen.rb', class_name: 'PlaceUser') do |w|
      PlaceUser.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for post by db'
  task create_post_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/post_gen.rb', class_name: 'Post') do |w|
      Post.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
  desc 'generate seed-fu file for post_user by db'
  task create_post_user_seed_by_db: :environment do
    SeedFu::Writer.write('./db/fixtures/post_user_gen.rb', class_name: 'PostUser') do |w|
      PostUser.all.each do |p|
        w << p.as_json(except: %i[create_at, update_at]);
      end
    end
  end
end
