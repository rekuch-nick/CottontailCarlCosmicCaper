draw_self();

var ee = 0;
if(pc.eventTrigger[Event.palace1Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace2Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace3Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace4Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace5Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace6Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace7Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace8Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace9Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace10Clear]){ ee ++; }
if(pc.eventTrigger[Event.palace11Clear]){ ee ++; }

draw_set_halign(fa_center);
draw_text_transformed(room_width / 2, 30, "Cottontail Carl", 2.2, 2.2, 0);
draw_text_transformed(room_width / 2, 80, "and the Cosmic Clash", 1.1, 1.1, 0);

draw_text_transformed(room_width / 2, 650, "Press [ENTER] to Start", 1.1, 1.1, 0);
draw_text_transformed_color(room_width / 2, 680, "(You might have to click the screen first)", .9, .9, 0, c_gray, c_gray, c_gray, c_gray, 1);
draw_text_transformed_color(room_width / 2, 710, string(pc.hpMax) + " HP " + string(ee) + " EGGS ", .9, .9, 0, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_transformed_color(room_width / 2, 740, "Press [SHIFT] + [ENTER] to delete save data", .9, .9, 0, c_gray, c_gray, c_gray, c_gray, 1);

draw_set_halign(fa_left);