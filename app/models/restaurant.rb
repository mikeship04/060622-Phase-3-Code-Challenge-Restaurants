class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    #working
    def self.fanciest
        self.all.order(price: :desc).first
    end

    #working
    def all_reviews
        reviews.map{|rev| rev.full_review}
    end
end