require 'spec_helper'
require 'usamap'

module Usamap
  
  describe USAmap do  
    before(:each) do
      @blank_svg = UsaCountiesSvg.svg
    end
    
    describe "should be a blank map when instantiated without params"  do
      its(:to_s) { should == @blank_svg }
    end      
     
    context "with color and stats hashes passed when instantiated" do
      it "should insert one css class definition" do
        colors = {}; colors[6..100] = 'blue'
        stats = {}; stats['35049'] = 99 
        my_map = USAmap.new(stats, colors)      
 
        my_map.to_s.should include (".c35049 {fill:blue}")
      end
 
      it "should be equal to the blank_svg with the css inserted" do
        colors = {}; colors[6..100] = 'blue'
        stats = {}; stats['35049'] = 99 
        my_map = USAmap.new(stats, colors)      
        blank_svg_tweaked =  @blank_svg.gsub(/\/\*CSS insertion point\*\//, "/*CSS insertion point*/\n.c35049 {fill:blue}\n")       
   
        blank_svg_tweaked.should == my_map.to_s  
      end
    end
  
  end

end
