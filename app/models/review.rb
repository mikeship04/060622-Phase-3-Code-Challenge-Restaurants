class Review < ActiveRecord::Base
    belongs_to :customer
    belongs_to :restaurant

    #working
    def full_review
        "Review for #{restaurant.name} by #{customer.full_name}: #{star_rating} stars."
    end
end