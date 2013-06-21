/*L
 * Copyright HealthCare IT, Inc.
 *
 * Distributed under the OSI-approved BSD 3-Clause License.
 * See http://ncip.github.com/edct-common/LICENSE.txt for details.
 */

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
