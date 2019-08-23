class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :react_portfolio_item, -> {where(subtitle: "React")}

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://via.placeholder.com/300x300"
        self.thumb_image ||= "https://via.placeholder.com/150x150"
    end

 end
