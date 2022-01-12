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

    def highest_grade
        students = Student.all
        highestGrade = students.find_by(grade: students.maximum('grade'))
        render json: highestGrade
    end

end
