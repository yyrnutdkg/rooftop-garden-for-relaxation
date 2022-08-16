class SearchPlacesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :tag_id, :integer
  attribute :business_hours, :time

  def search
    relation = Place.distinct
    place_name_words.each do |word|
      relation = relation.place_name_contain(word)
    end
    relation = relation.by_tag(tag_id) if tag_id.present?
    relation = relation.by_business_hours(business_hours) if business_hours.present?
    relation
  end

  private

  def place_name_words
    name.present? ? name.split(nil) : []
  end
end