class NothingResponse
  def response
    'Fine. Be that way.'
  end
end

class YellingResponse
  def response
    "Woah, chill out!"
  end
end

class DefaultResponse
  def response
    "Whatever."
  end
end

class QuestionResponse
  def response
    "Sure."
  end
end

module LackadaisicalTeenager
  def respond(message)
    if nothing?(message)
      response =  NothingResponse.new.response
    elsif yelling?(message)
      response = YellingResponse.new.response
    elsif question?(message)
      response = QuestionResponse.new.response
    else
      response = DefaultResponse.new.response
    end

    response

  end

  def nothing?(message)
    message.empty?
  end

  def yelling?(message)
    message.upcase == message
  end

  def question?(message)
    message[-1] == '?'
  end

end

class Bob
  include LackadaisicalTeenager

  def hey(message)
    respond(message)
  end
end
