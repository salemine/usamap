require 'usa_counties_svg'

class USAmap
  attr_accessor :stats_h, :colors_h
  
  def initialize(stats_h = {}, colors_h = {})
    @stats_h, @colors_h = stats_h, colors_h
  end

  def to_s
    css = '' 
    @stats_h.each do |fips, val|
      colr = @colors_h.select { |range, hex| range.member?(val) }.values.first  
      css << ".c#{fips} {fill:#{colr}}\n"
    end
    @@svg.gsub!(/\/\*CSS insertion point\*\//, css)
  end
  
end
