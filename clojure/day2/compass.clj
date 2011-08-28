(defprotocol Compass
	(direction [c])
	(left [c])
	(right [c]))

(def directions [:north :east :south :west])

(defn turn
	[base amount]
	(rem (+ base amount) (count directions)))

