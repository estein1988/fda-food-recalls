class Recall < ApplicationRecord
    has_many :save_recalls
    has_many :users, through: :save_recalls
end
