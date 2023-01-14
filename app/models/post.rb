class Post < ApplicationRecord
  validates :title, :presence => true,
                   :length => { :minimum => 5, maximum: 50 }
validates :body, :presence => true,
          :length => { :minimum => 10, maximum: 2000 }
          belongs_to :user
          has_many :comments, dependent: :destroy

has_rich_text :body
has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
end
