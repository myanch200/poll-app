class Choice < ApplicationRecord
  belongs_to :question

  def self.attributable_params
    [
      :id,
      :name,
      :_destroy
    ]
  end
end
