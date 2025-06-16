class Task < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :done, inclusion: { in: [true, false] }

  validate :due_date_is_date

  def due_date_is_date
    if due_date.present? && !due_date.is_a?(Date)
      errors.add(:due_date, 'deve ser uma data válida')
    end
  end
end
