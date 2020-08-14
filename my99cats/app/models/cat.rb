# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    COLORS = ["Black", "Orange", "Gray", "White", "Brown"]
    validates :birth_date, :name, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: ["M","F"]

    def self.COLORS
        return COLORS

    end

end
