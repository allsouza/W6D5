# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint           not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :string           default("PENDING")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
#be rails g model cat_rental_request cat_id:integer start_date:date end_date:date status:string

class CatRentalRequest < ApplicationRecord

    validates :status

end
