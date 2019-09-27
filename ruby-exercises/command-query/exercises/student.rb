class Student

  attr_accessor :grade, :study_count
  def initialize
    @grade = "C"
    @study_count = 0
  end

  def study
    self.study_count += 1
    if self.study_count == 1
      self.grade = "B"
    elsif self.study_count >= 2
      self.grade = "A"
    elsif self.study_count == 0
      self.grade = "C"
    elsif self.study_count == -1
      self.grade = "D"
    else self.study_count <= -2
      self.grade = "F"
    end
  end

  def slack_off

   self.study_count -= 1

   if self.study_count == 1
     self.grade = "B"
   elsif self.study_count >= 2
     self.grade = "A"
   elsif self.study_count == 0
     self.grade = "C"
   elsif self.study_count == -1
     self.grade = "D"
   else self.study_count <= -2
     self.grade = "F"
   end
  end

end
