class Categorization < ActiveRecord::Base

 belongs_to :kitten
 belongs_to :category

 validates_presence_of :category_id
 validates_uniqueness_of :category_id, scope: :kitten_id


end
