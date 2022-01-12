class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        orderedGrades = students.order(grade: :desc)
        render json: orderedGrades
    end

end
