module BrowserConwayGameOfLife
  class Universe
    attr_reader :rows, :cols

    def initialize(rows, cols)
      srand 42
      @field = Array.new(rows) { Array.new(cols) { Cell.new } }
      @temp_field = @field.clone
    end

    def next
      step
      @temp_field = @field.clone
    end

    def to_s
      string = ''
      @field.each do |vector|
        vector.each do |el|
          string << el.to_s
        end
        string << "\n"
      end
      string
    end

    private

    def step
      @field.each_with_index do |vector, row|
        vector.each_with_index do |el, col|
          live = Cell.live_neighbours(@temp_field, row, col)
          el.dead? && live == 3 && el.change!
          el.live? && !(2..3).include?(live) && el.change!
        end
      end
    end
  end
end
