//@desc Check if object go off screen, if yes its get deactivate
//@arg object

function scr_deactivate_obj(argument0)
{
	var _camY = camera_get_view_y(view_camera[0]), _camHeight = 360
	with(argument0)
	{
		var _yOffset = 5
		
		var _bboxTop = y
		var _bboxBottom = _bboxTop + sprite_height + _yOffset - 26
		
		var _offScreen = !((_bboxTop < _camY + _camHeight + 100) 
			&& (_bboxBottom > _camY))
		
		if(_offScreen)
		{
			instance_deactivate_object(id);
			ds_list_add(global.deactivated_instances, [id, _bboxTop, _bboxBottom]);
		}
	}
} 

//@desc Activate all instance on screen
function scr_activate_obj()
{
	var i = 0, _camY = camera_get_view_y(view_camera[0]), _camHeight = 360, _dsList = global.deactivated_instances ,_dsSize = ds_list_size(_dsList)
	repeat(_dsSize)
	{
		var _inst = global.deactivated_instances[| i];
		var _offScreen = !((_inst[1] < _camY + _camHeight + 100) 
			&& (_inst[2] > _camY))
		
		if(!_offScreen)
		{
			instance_activate_object(_inst[0]);
			ds_list_delete(_dsList, i--);
		}
		i++;
	}
}