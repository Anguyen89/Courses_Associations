class Course < ActiveRecord::Base
  validates :name, :prereq_id, :instructor_id, presence: true

  has_many :enrollments,
    foreign_key: :course_id,
    primary_key: :id,
    class_name: "Enrollment"

  has_many :enrolled_students,
    through: :enrollments,
    source: :user

  belongs_to :prerequisite,
    foreign_key: :prereq_id,
    primary_key: :id,
    class_name: "Course"

  belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: "User"



end
