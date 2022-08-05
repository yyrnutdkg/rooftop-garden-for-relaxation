class SearchPlacesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :tag_id, :integer

  def search
    relation = Place.distinct
    place_name_words.each do |word|
      relation = relation.place_name_contain(word)
    end
    relation = relation.by_tag(tag_id) if tag_id.present?
    relation
  end

  private

  def place_name_words
    name.present? ? name.split(nil) : []
  end
end
