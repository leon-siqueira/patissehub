module ApplicationHelper
  def pluralize(word, number)
    number != 1 ? "#{number} #{word}s" : "#{number} #{word}"
  end
end
