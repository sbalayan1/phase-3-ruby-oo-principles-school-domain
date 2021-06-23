# code here!
require 'pry'


class School

    attr_accessor :name, :roster

    def initialize name 
        @name = name
        @roster = {}
    end 

    # adds a student to the school by calling the add_student method and gives it an argument of a student name and grade 
    # first need to create a new key and point to an empty array 
    #then can push the new value into the array 
    def add_student name, grade
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name 
        end
    end 

    def grade grade_level
        @roster[grade_level]
    end 


    def sort
        @roster.each do |key, value|
            value.sort!
        end 
    end 

end 
