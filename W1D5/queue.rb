class Queue
  def initialize
    @cue = []
  end

  def enqueue(el)
    @cue.push(el)
  end

  def dequeue
    @cue.shift
  end

  def show
    @cue
  end
end
