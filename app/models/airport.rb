# == Schema Information
#
# Table name: airports
#
#  id         :integer          not null, primary key
#  name       :string
#  city_id    :integer
#  department :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airport < ActiveRecord::Base
  belongs_to :city
  has_many :clinic_histories




   def self.search(search)
    where("name like '%#{search}%'  or department like '%#{search}%'")
  end

end
