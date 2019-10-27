class Image < ApplicationRecord
  belongs_to :tweet
  belongs_to :comment
end
