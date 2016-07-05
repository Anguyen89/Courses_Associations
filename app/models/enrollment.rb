class Enrollment < ActiveRecord::Base
  validates :course_id, :student_id, presence: true

  belongs_to :course,
    foreign_key: :course_id,
    primary_key: :id,
    class_name: "Course"

  belongs_to :user,
    foreign_key: :student_id,
    primary_key: :id,
    class_name: "User"



end
