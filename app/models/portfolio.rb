class Portfolio < ApplicationRecord
    include Placeholder
    has_many :technologies
    
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :react_portfolio_item, -> {where(subtitle: "React")}
    #setting default values for creating new portfolio items
    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: "300",width:"300")
        self.thumb_image ||= Placeholder.image_generator(height: "150",width:"150")
    end

 end
