(
var width= 1350, height= 700;
var win= Window("spiral", Window.screenBounds).front.fullScreen;
var usr= UserView(win, Rect(0, 0, width, height));
usr.background= Color.black;
usr.animate= true;
usr.drawFunc= {
        var theta= sin(usr.frame*0.001)*2pi*4;
        Pen.fillColor= Color.white;
        Pen.translate(width*0.5, height*0.5);
        height.do{|y|
                10.do{|i|
                        Pen.rotate(theta*0.001);
                        Pen.fillRect(Rect(sin(y*0.1+theta+(i*2))*100, y, 2, 2));
                };
        };
};
CmdPeriod.doOnce({win.close});
win.front;
)
///////////////////////////////////////////////////////////////
(
var width= 1350, height= 700;
var win= Window("spiral", Rect(0, 70, width, height), false);
var usr= UserView(win, Rect(0, 0, width, height));
usr.background= Color.black;
usr.animate= true;
usr.drawFunc= {
        var theta= sin(usr.frame*0.001)*2pi*4;
        Pen.fillColor= Color.white;
        Pen.translate(width*0.5, height*0.5);
        height.do{|y|
                10.do{|i|
                        Pen.rotate(theta*0.001);
                        Pen.fillRect(Rect(sin(y*0.1+theta+(i*2))*100, y, 2, 2));
                };
        };
};
CmdPeriod.doOnce({win.close});
win.front;
)