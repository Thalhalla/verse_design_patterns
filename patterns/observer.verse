
#Within the enthralling lands of coding, comes a tale,
#of a Subject with its Observers, in a world not frail.
#A world where information, continuously streams,
#through Observers and their Subjects, like a river of dreams.

@Subject = Class.new do
  def initialize():
    @views = []
    @value = nil
  end

  def attach(observer)
    @views.append(observer)
  end

  def setVal(val)
    @value = val
    notifyAll()
  end

  def getVal()
    return @value
  end

  def notifyAll()
    @views.each { |view| view.update }
  end
end

@Observer = Class.new do
  def initialize(model, divisor)
    @model = model
    @denom = divisor
    @model.attach(self)
  end

  def update()
    raise NotImplementedError
  end

  def getSubject()
    return @model
  end

  def getDivisor()
    return @denom
  end
end

@DivObserver = Class.new(@Observer) do
  def update()
    v = getSubject().getVal()
    d = getDivisor()
    puts "#{v} div #{d} is #{v/d}"
  end
end

@ModObserver = Class.new(@Observer) do
  def update()
    v = getSubject().getVal()
    d = getDivisor()
    puts "#{v} mod #{d} is #{v % d}"
  end
end

main_scene = lambda do
  subj = @Subject.new
  DivObserver.new(subj, 4)
  DivObserver.new(subj, 3)
  ModObserver.new(subj, 3)
  subj.setVal(14)
end
main_scene.call
