class Queue
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar.unshift(el)
  end

  def delete
    @ivar.pop
  end

  def show
    @ivar
  end

end
