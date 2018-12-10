class Book < ApplicationRecord
  enum status: { wish:0, backlog:1, in_progress:2, review:3, done:4, deleted:5 }
  has_many :contents
end
