class Question < ApplicationRecord
  validates :name, presence: true
  has_many :choices

  accepts_nested_attributes_for :choices,reject_if: :all_blank,  allow_destroy: true


  def self.attributable_params
    [
      :name,
      :date_published,
      choices_attributes: Choice.attributable_params
    ]
  end
end
