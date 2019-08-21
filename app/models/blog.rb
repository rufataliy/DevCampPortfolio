class Blog < ApplicationRecord
    enum status: [:draft, :published]
    enum status2: [:draft2, :published2]
    extend FriendlyId
    friendly_id :title, use: :slugged
end
