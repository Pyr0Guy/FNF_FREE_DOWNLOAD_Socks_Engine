function scr_jsonImport(_file_name, _func)
{
	if(file_exists(_file_name))
	{
		var _file, _json_str;
		_file = file_text_open_read(_file_name);
		_json_str = ""
		while(!file_text_eof(_file))
		{
			_json_str += file_text_read_string(_file);
			file_text_readln(_file);
		}
		file_text_close(_file);
		return script_execute(_func, _json_str);
	}
	return undefined
}