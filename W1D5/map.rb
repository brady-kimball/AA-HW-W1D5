class Map
  def initialize
    @pairs = []
  end

  def assign(key, value)
    @pairs.push([key, value]) unless lookup(key)

    @pairs.map! do |pair|
      pair.first == key ? [key, value] : pair
    end
  end

  def lookup(key)
    @pairs.each do |pair|
      return pair.last if pair.first == key
    end

    nil
  end

  def remove(key)
    @pairs.delete_if { |pair| pair.first == key }
  end

  def show
    @pairs
  end
end
