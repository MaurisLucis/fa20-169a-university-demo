class University < ApplicationRecord
  validates :name, :presence => true
  validate :correct_rank_provided

  def correct_rank_provided
    fixed_num_max = 2 ** (0.size * 8 - 2) - 1
    cal_names = ["UCB", "Cal", "UC Berkeley"]

    if !cal_names.include?(name) and rank == 1
      errors.add(:rank, 'must not be 1 if university is not Cal')
    elsif cal_names.include?(name) and rank != 1
      errors.add(:rank, 'must be 1 if Cal is provided')
    elsif rank > fixed_num_max || rank <= 0
      errors.add(:rank, 'must be a valid positive integer')
    end
  end
end
