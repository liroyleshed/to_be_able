class ToBeAble::Registry
  def initialize()
    @registry = []
  end

  def register(law)
    @registry << law
  end

  def unregister(law)
    @registry.delete(law)
  end
end
