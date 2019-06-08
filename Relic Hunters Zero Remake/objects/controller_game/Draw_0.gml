/// @description Debug

if (global.debug) {
	with (class_player) {
		draw_set_color(c_black);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with (class_enemy) {
		draw_set_color(c_black);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	with (class_gun) {
		if (owner != noone) {
			switch (object_get_parent(owner.object_index)) {
				case class_player:
					if (global.gamepad != noone && is_selected) {
						draw_set_color(c_yellow);
						draw_circle(x, y, projectile_range, true);
						draw_set_color(c_red);
						draw_line(x, y, owner.crosshair_x, owner.crosshair_y);
					}
				break;
			}
		}
	}
	with (class_projectile) {
		draw_set_color(c_black);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
}