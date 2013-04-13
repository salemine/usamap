require File.join(File.dirname(__FILE__), 'usa_counties_svg')

# @author salemine <info@salemine.com>
class USAmap
  include UsaCountiesSvg
  # @param [Hash] stats_h stats to plot by county FIPS value eg stats_h ['35001'] = 3
  # @param [Hash] colors_h colors to plot for numeric ranges eg colors_h [0..5] = '#CD5C5C'
  def initialize(stats_h = {}, colors_h = {})
    @stats_h, @colors_h = stats_h, colors_h
  end

  # == Returns:
  # A colorized SVG (Scalable Vector Graphics) map of the USA 
  def to_s
    css = '' 
    @stats_h.each do |fips, val|
      colr = @colors_h.select { |range, hex| range.member?(val) }.values.first  
      css << ".c#{fips} {fill:#{colr}}\n"
    end
    UsaCountiesSvg.svg.gsub!(/\/\*CSS insertion point\*\//, css)
  end
end
