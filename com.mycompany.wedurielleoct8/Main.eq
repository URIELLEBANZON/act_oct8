
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite textlabel1;
    SESprite textlabel2;
    SESprite textlabel3;
    SESprite textlabel4;
    String text1;
    String text2;
    String text3;
    String text4;
	int ctr=0;
	public void initialize(SEResourceCache rsc) {
			base.initialize(rsc);
			add_sprite_for_color(Color.instance("red"), get_scene_width(),get_scene_height());
			rsc.prepare_image("b", "baby", 0.5*get_scene_width(),get_scene_height()*0.5);	
			rsc.prepare_image("d", "dog", 0.5*get_scene_width(),get_scene_height()*0.5);
       	 rsc.prepare_image("f", "flower", 0.5*get_scene_width(),get_scene_height()*0.5);
       	 rsc.prepare_image("h", "happyf", 0.5*get_scene_width(),get_scene_height()*0.5);
			rsc.prepare_font("myfont","arial bold color=white",40);
			image1 = add_sprite_for_image(SEImage.for_resource("b"));
			image2 = add_sprite_for_image(SEImage.for_resource("d"));
        	image3 = add_sprite_for_image(SEImage.for_resource("f"));
        	image4 = add_sprite_for_image(SEImage.for_resource("h"));
			image1.move(0,0);
			image2.move(get_scene_width()*0.5,0);
        	image3.move(0,get_scene_height()*0.5);
        	image4.move(get_scene_width()*0.5,get_scene_height()*0.5);
           
			text1 = "BABY";
        	text2 = "DOGGY";
        	text3 = "FLOWER";
        	text4 = "HAPPY FACE";
			textlabel1 = add_sprite_for_text("","myfont");
       	 image1.set_alpha(0);
			image2.set_alpha(0);
        	image3.set_alpha(0);
        	image4.set_alpha(0);
	}
	  public void on_key_press(String name, String str) {
        
    }
   
    public void on_pointer_press(SEPointerInfo pi) {
        if(pi.is_inside(0,0,get_scene_width()*0.5,get_scene_height()*0.5)){
            textlabel1.set_text(text1);
            textlabel1.move(get_scene_width()*0.25,get_scene_height()*0.25);
            image1.set_alpha(0.5);
       	 image2.set_alpha(1);
       	 image3.set_alpha(1);
        	image4.set_alpha(1);
        }
		 else if(pi.is_inside(get_scene_width()*0.5,0,get_scene_width(),get_scene_height()*0.5)) {
            textlabel1.set_text(text2);
            textlabel1.move(get_scene_width()*0.75,get_scene_height()*0.25);
            image2.set_alpha(0.5);
      	  image1.set_alpha(1);
      	  image3.set_alpha(1);
      	  image4.set_alpha(1);
        }
		    else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5,get_scene_height())) {
            textlabel1.set_text(text3);
            textlabel1.move(get_scene_width()*0.25,get_scene_height()*0.75);
            image3.set_alpha(0.5);
       	 image2.set_alpha(1);
      	  image1.set_alpha(1);
      	  image4.set_alpha(1);
        }
	    else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5,get_scene_width(),get_scene_height())){
            textlabel1.set_text(text4);
            textlabel1.move(get_scene_width()*0.75,get_scene_height()*0.75);
            image4.set_alpha(0.5);
     	   image2.set_alpha(1);
    	   image3.set_alpha(1);
   	     image1.set_alpha(1);
        }
    }
}
