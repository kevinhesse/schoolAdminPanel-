class Cohort < ApplicationRecord
  belongs_to :course
  has_one :teacher_cohort
  has_one :teacher, through: :teacher_cohort
  has_many :student_cohorts
  has_many :students, through: :student_cohorts
end
