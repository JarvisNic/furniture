class Client < ApplicationRecord

      has_one :State
      belongs_to :Rental
end
