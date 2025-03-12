///@param x
///@param y
///@param string
///@param xscale
///@param yscale
///@param color_outline
function draw_outline(xx,yy,str,xscale,yscale,color_outline){
	var xdis = (xscale);
	var ydis = (yscale);
	var color_temp = draw_get_color();
	draw_set_color(color_outline);
	draw_text_transformed(xx+xdis,yy+ydis,str,xscale,yscale,0);
	draw_text_transformed(xx-xdis,yy-ydis,str,xscale,yscale,0);
	draw_text_transformed(xx-xdis,yy+ydis,str,xscale,yscale,0);
	draw_text_transformed(xx+xdis,yy-ydis,str,xscale,yscale,0);
	draw_set_color(color_temp);
}
