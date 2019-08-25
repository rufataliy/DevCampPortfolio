class Blog < ApplicationRecord
    enum status2: [:draft2, :published2]
    extend FriendlyId
    friendly_id :title, use: :slugged
    validates_presence_of :title, :body
    belongs_to :topic

    after_initialize :set_defaults

    def set_defaults
        self.topic_id ||= 1
    end
end
