class Book < ApplicationRecord
  enum status: { backlog:0, in_progress:1, review:2, done:3 }
  has_many :contents
end
