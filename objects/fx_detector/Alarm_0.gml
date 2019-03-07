/// @description Second detector

if (expand) {
	var _detector = instance_create_layer(x, y, "interactive", fx_detector);

	_detector.expand = false;
	_detector.target_radius = target_radius;
	_detector.color = color;
}