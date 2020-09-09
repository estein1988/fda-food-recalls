class User < ApplicationRecord
    has_many :save_recalls
    has_many :recalls, through: :save_recalls
end
