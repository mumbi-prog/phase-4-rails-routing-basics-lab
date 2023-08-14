class StudentsController < ApplicationController
    def index
        allstudents = Student.all
        render json: allstudents
    end

    def grades
        grades_order = Student.order(grade: :desc)
        render json: grades_order
    end

    def highest_grade
        top_student = Student.order(grade: :desc).first
        render json: top_student
    end
end
