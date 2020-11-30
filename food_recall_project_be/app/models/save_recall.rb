class SaveRecall < ApplicationRecord
  belongs_to :user
  belongs_to :recall
end
