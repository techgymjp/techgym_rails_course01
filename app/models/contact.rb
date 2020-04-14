class Contact < ApplicationRecord
  enum title: %i(  service relationship job other )
  enum status: %i( yet done )

  after_initialize :set_default, if: :new_record?

  def set_default
    self.status ||= :yet
  end
end
