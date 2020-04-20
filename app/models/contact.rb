class Contact < ApplicationRecord
  enum title: %i(  service relationship job other )
  enum status: %i( yet done )

  validates :title, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :content, presence: true

  after_initialize :set_default, if: :new_record?

  def set_default
    self.status ||= :yet
  end
end
