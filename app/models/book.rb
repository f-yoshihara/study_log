class Book < ApplicationRecord
  # belongs_to :category
  enum status: { backlog:0, in_progress:1, review:2, done:3 }
end
