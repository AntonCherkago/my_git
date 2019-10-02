class Duck

  @@greeting = "Hello"                      #переменная класса

  def initialize(greeting)                  #метод-конструктор
    @greeting = greeting                    #инстансная переменная
  end

  def quack
    puts "#{@@greeting} #{@greeting}"
  end

  class << self

    attr_accessor :greeting

    def quack
      puts "#{@@greeting} #{@greeting}"       #инстансная переменная класса
    end

  end

end

duck1 = Duck.new("quack quack")
duck1.quack

Duck.greeting = "class quack"
Duck.quack
