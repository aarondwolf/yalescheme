clear

* Install Scheme
*net install yalescheme, from("https://aarondwolf.github.io/yalescheme")

net install yalescheme, from("C:\Users\adw54\Documents\GitHub\yalescheme") replace

* Fonts (use if you have Mallory available)

graph set window fontface "Mallory Thin"
graph set window fontfacemono default
graph set window fontfacesans "Mallory Thin"
graph set window fontfaceserif YaleNew
graph set window fontfacesymbol "Mallory Thin"


* Test graph output
	* Scatter
	sysuse auto, clear
	twoway  (scatter price mpg if foreign == 0) ///
			(scatter price mpg if foreign == 1), scheme(yale)
		
	*graph export example.pdf, replace

	* Bar Charts
	graph bar length turn displacement mpg rep78 headroom trunk, over(foreign) scheme(yale)

	* Line Plot 
	sysuse sp500, clear
	twoway  (rarea high low date) (line open date), scheme(yale)
	







	graph set window fontface default
	graph set window fontfacemono default
	graph set window fontfacesans default
	graph set window fontfaceserif default
	graph set window fontfacesymbol default

	

		
