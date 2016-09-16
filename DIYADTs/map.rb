class Map
  def initialize
    @ivar = []
  end

  def assign(key, value)
    if self.lookup(key) == nil
      @ivar << [key, value]
    else
      @ivar.map do |subarray|
        subarray[1] = value if subarray[0] == key
      end
    end
  end

  def lookup(key)
    @ivar.each do |subarray|
      if subarray[0] == key
        return subarray[1]
      end
    end
    nil
  end

  def remove(key)
    @ivar.each_with_index do |subarray, index|
      if subarray[0] == key
        @ivar.delete_at(index)
      end
    end
  end

  def show
    @ivar
  end

end
