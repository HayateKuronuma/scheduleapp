class Task < ApplicationRecord
    validates :title, presence: true
    validates :start, presence: true
    validates :finish_day, presence: true
    
    validate :pretend_ago
    
    def pretend_ago
      errors.add(:finish_day, "は今日以降の日付を選択してください") if finish_day.nil? ||  finish_day < Date.today
    end
end
