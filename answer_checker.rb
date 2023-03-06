class AnswerChecker
  def self.correct?(question, answer)
    nums = question.scan(/\d+/).map(&:to_i)
    answer == nums.sum
  end
end