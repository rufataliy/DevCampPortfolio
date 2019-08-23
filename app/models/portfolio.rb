class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :react_portfolio_item, -> {where(subtitle: "React")}
end
