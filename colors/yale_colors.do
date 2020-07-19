/*******************************************************************************

	Yale Colors for Stata Graphs
	****************************

	This .do file creates color styles for Yale Blue orange, green, and greys.

	The files are all written to the users personal Stata directory
	(c(sysdir_personal)).

	HOW TO RUN:
	Simply run this .do file (with no changes), and then re-start Stata
	for the colors too be incorporated into its directory.

	Written by:			 Aaron Wolf (aaron.wolf@yale.edu), June 24, 2020
	Last Modified by:	 Aaron Wolf (aaron.wolf@yale.edu), July 16, 2020


*******************************************************************************/

clear
// cd "`c(sysdir_personal)'"
// cap mkdir s
// cap mkdir style
// cd "`c(sysdir_personal)'/style"

* Set colors

local yblue 		"0 53 107"
local yltblue 		"40 109 192"
local yvltblue		"99 170 255"
local ygreen		"95 113 45"
local yorange		"189 83 25"
local ypurple		"119 71 152"
local ygs1			"34 34 34"
local ygs2			"74 74 74"
local ygs3 			"151 141 133"
local ygs4			"221 221 221"
local ygs5			"249 249 249"


local colors yblue yltblue yvltblue ygreen yorange ypurple ygs1 ygs2 ygs3 ygs4 ygs5



* Loop through colors and write a color style file for each
local sequence = 950
local date = string(td(`c(current_date)'),"%td")


foreach color in `colors' {
	local sequence = `sequence' + 1
	local allcap = strupper("`color'")

	file open `color' using color-`color'.style, write replace
	file write `color' "*! version 1.0.1  `date'" _n
	file write `color' "sequence `sequence'" _n
	file write `color' `"* label "`allcap'""' _n
	file write `color' `"label resource "COLOR-`allcap'""' _n _n

	file write `color' `"set rgb "``color''""' _n

	file close `color'
}

** Note: You need to re-start Stata for these to take effect
