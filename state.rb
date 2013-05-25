class State
	attr_accessor :on #Boolean
	attr_accessor :colormode #:xy :ct or :hs
	attr_accessor :hue #:Integer 0..65535
	attr_accessor :sat #Integer 0..255
	attr_accessor :bri #Integer 0..255
	attr_accessor :xy #[x,y] x,y in 0..1
	attr_accessor :ct #Integer, bulb-dependent. about 153..500 for philips
	attr_accessor :alert #:none, :select, or :lselect
	attr_accessor :effect # :none or :colorloop
	attr_accessor :reachable #Boolean, always true
	def initialize
		@on = false
		@colormode = :hue
		@hue = 0
		@sat = 255
		@xy = [0.675,0.322]
		@ct = 500
		@alert = :none
		@effect = :none
		@reachable = true
	end
end
