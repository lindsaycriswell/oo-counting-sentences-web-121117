require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.+|!+|\?+/).length
  end
end


# regex - // are the wrappers telling ruby we are working in REGEX - a way of detecting patterns in strings
# we are telling split to look for periods that are next to each other ("\.+") - the + tells regex that
# we are looking for instances of periods or periods next to each other
# we separate the terms of split with pipes
# we need to put \'s in front of . and ? because regex will regard them as operators otherwise -we don't
# need to do this with !
