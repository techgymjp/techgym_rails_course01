class Contact < ApplicationRecord
  enum title: %i(  service relationship job other )
  enum status: %i( yet done )
end
