class School
  def initialize(schoolName)
    @sname = schoolName
    @school_db = {}
  end

  def db
      @school_db
  end

  def add(pupil, grade)
    if @school_db[grade].nil?
      @school_db[grade] = [pupil]
    else
      @school_db[grade] << pupil
    end
  end

  def grade(gradeNum)
    # this doesn't run if gradeNum is called simply grade
    @school_db[gradeNum]
  end

  def sort
    # sort each subarray:
    @school_db.each_value do |subarray|
      subarray.sort!
    end
    # sort the hash by grade:
    Hash[@school_db.sort_by { |grade, pupil_array| grade}]
  end
end