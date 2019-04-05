class Album < ApplicationRecord
    validates :studio, presence:true, inclusion: %w(true false)
end
