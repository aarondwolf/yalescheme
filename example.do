clear

* Install Scheme
cap net uninstall yalescheme
net install yalescheme, from("https://aarondwolf.github.io/yalescheme")

* Fonts
graph set window fontface default

* Test graph output
	* Scatter
	sysuse auto, clear
	twoway  (scatter price mpg if foreign == 0) ///
			(scatter price mpg if foreign == 1), scheme(yale)

	* Bar Charts
	graph bar length turn displacement mpg rep78 headroom trunk, over(foreign) scheme(yale)

	* Line Plot 
	sysuse sp500, clear
	twoway  (rarea high low date) (line open date), scheme(yale)



	

		
