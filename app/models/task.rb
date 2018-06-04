class Task < ApplicationRecord
  validates :task_name, presence: true, length: {minimun: 1, maximum: 30}, uniqueness: true
  validates :deadline, presence: true

  scope :undone_status, -> {
    where(status: false).order("created_at DESC")}

  def self.search(search)
    if search
      Task.where(["task_name like ?", "%#{search}%"])
    end
  end

end
