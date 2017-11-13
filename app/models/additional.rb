class Additional < ApplicationRecord
    validate :item, presence: true
    
end
