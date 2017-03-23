require 'person/version'

module Person
  class Person
    # add you method implementations here

    def initialize(name)
      @name = name
      @prev = [name]
      @count = 0
    end

    def to_s
      @prev[@count]
    end

    def titlelize
      @prev << @name.capitalize
      @count += 1
      self
    end

    def upcase
      @prev << @name.upcase
      @count += 1
      self
    end

    def downcase
      @prev << @name.downcase
      @count += 1
      self
    end

    def reverse
      @prev << @name.reverse.to_s
      @count += 1
      self
    end

    def hyphenize
      @prev << @name.split("").join("-")
      @count += 1
      self
    end

    def undo
      if @count > 0
        @prev.pop
        @count = @count - 1
      end
      self
    end

  end
end
