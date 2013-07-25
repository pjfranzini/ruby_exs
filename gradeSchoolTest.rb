require_relative './gradeSchool'
require 'minitest/autorun'
require 'minitest/pride'

class GradeSchoolTest < MiniTest::Unit::TestCase
  def school
    @school
  end

  def setup #run at the beginning of every test
    @school = School.new("Haleakala Hippy School")
  end

  def test_initialize_accepts_a_string
    refute_nil school
  end

  def test_db_creates_empty_hash
    assert_equal school.db , {}
  end

  def test_add_puts_student_in_hash
    school.add("James", 2)
    assert_equal school.db , {2 => ["James"]}
  end

  def test_add_several_students
    school.add("James", 2)
    school.add("Phil", 2)
    school.add("Jennifer", 3)
    school.add("Little Billy", 1)
    assert_equal school.db , {2 => ["James", "Phil"], 3 => ["Jennifer"], 1 => ["Little Billy"]}
  end

  def test_grade_method
    school.add("James", 2)
    school.add("Phil", 2)
    school.add("Jennifer", 3)
    school.add("Little Billy", 1)
    assert_equal school.grade(2) ,["James", "Phil"]
  end

  def test_sort_method
    school.add("James", 2)
    school.add("Blair", 2)
    school.add("Jennifer", 3)
    school.add("Little Billy", 1)
    assert_equal school.sort , {1 => ["Little Billy"], 2 => ["Blair", "James"], 3 => ["Jennifer"]}
  end

  def test_another_sort
    # note that if testname doesnt start with test, test will not run!
    school.add("Jennifer", 4)
    school.add("Peter", 3)
    school.add("Anthony", 3)
    school.add("Sam", 6)
    school.add("Kareem", 6)
    school.add("Christopher", 4)
    school.add("Kyle", 3)
    sorted = {
      3 => ["Anthony", "Kyle", "Peter"],
      4 => ["Christopher", "Jennifer"],
      6 => ["Kareem","Sam"]
    }
    assert_equal sorted, school.sort
  end
end