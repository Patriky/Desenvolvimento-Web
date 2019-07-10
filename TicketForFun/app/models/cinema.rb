class Cinema < ApplicationRecord

    belongs_to :manager
    has_many :salas

end
