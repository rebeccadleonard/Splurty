class Quote < ActiveRecord::Base
  validates :saying, presence: true, length: { maximun: 150, minimum: 10}
  validates :author, presence: true, length: {maximum: 50, minimum: 3}
end
