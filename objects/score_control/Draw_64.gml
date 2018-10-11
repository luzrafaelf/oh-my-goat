draw_set_font(f_default)
draw_set_halign(fa_center)
draw_text(120,0,"Score")
draw_text(120,32,global.points)

draw_text(520,0,"Highscore")
draw_text(520,32,global.highscore)

if(o_goat.dead){
	draw_text(320,240,"PRESS ENTER TO TRY AGAIN")
	draw_text(320,272,"YOUR SCORE")	
	draw_text(320,304,global.points)	
}

draw_set_halign(fa_left)
draw_text(0,460,"A game by Rafael Luz Haharo")	