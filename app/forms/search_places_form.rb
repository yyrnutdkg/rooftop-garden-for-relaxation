class SearchPlacesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string

  def search
    relation = Place.distinct
    place_name_words.each do |word|
      relation = relation.place_name_contain(word)
    end
    relation
  end

  private

  def place_name_words
    name.present? ? name.split(nil) : []
  end
end
