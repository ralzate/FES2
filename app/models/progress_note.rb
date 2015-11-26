# == Schema Information
#
# Table name: progress_notes
#
#  id                :integer          not null, primary key
#  patient_name      :string
#  patient_document  :string
#  type_document     :string
#  age               :integer
#  medical_record    :string
#  description       :text
#  clinic_history_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ProgressNote < ActiveRecord::Base
  belongs_to :clinic_history

  def self.search(search)
    where("patient_name like '%#{search}%'  or patient_document like '%#{search}%'")
  end



end
