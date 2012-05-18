package com.healthcit.cacure.data.utils;

import net.sf.json.JSONObject;


public class JSONUtils 
{
	public static boolean isJSONObject( Object obj )
	{
		boolean isJson = true;
		
		try
		{
			JSONObject.fromObject( obj );
		}
		
		catch( Exception ex )
		{
			isJson = false;
		}
		
		return isJson;
	}	
}
