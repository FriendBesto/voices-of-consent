class Purchase < ApplicationRecord
  belongs_to :location
  belongs_to :purchased_by, optional: true, class_name: "User", foreign_key: :purchased_by_id, inverse_of: :purchases
  belongs_to :reimbursed_by, optional: true, class_name: "User", foreign_key: :reimbursed_by_id, inverse_of: :reimbursed_purchases

  has_many :boxes
  has_many :inventory_adjustments
  has_many_attached :receipt_file_uploads
end
