class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants, through: :reviews

    #working
    def full_name
        "#{first_name} #{last_name}"
    end

    #working
    def favorite_restaurant
        reviews.all.order(star_rating: :desc).first.restaurant
    end

    #working
    def add_review(restaurant, rating)
        Review.create(restaurant: restaurant, star_rating: rating, customer: self)
    end
    #working
    def delete_reviews(restaurant)
        Review.where(restaurant: restaurant, customer: self).destroy_all
    end
end