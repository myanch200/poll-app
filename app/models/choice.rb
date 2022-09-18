class Choice < ApplicationRecord
  belongs_to :question
  after_update_commit { broadcast_replace_to "choices" }

  def self.attributable_params
    [
      :id,
      :name,
      :_destroy
    ]
  end
end
