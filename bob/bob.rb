class Bob

  def hey input
    return 'Whoa, chill out!' if input.match(/[A-Z]/) && !input.match(/[a-z]/)
    return 'Sure.' if input.match(/\?\z/)
    return 'Fine. Be that way!' unless input.match(/\S/)
    'Whatever.'
  end

end
