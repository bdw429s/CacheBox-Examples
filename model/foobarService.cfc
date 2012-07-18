<cfcomponent output=false>
	<cfproperty name="queryHelper" inject="coldbox:plugin:queryHelper">
	<cfproperty name="cache" inject="cacheBox:default">

	<cffunction name="getBigData" output="false">

		<cfif cache.lookup("bigData")>
		
			<cfset var bigData = cache.get("bigData")>
			
		<cfelse>
		
			<cfset var bigData = queryHelper.querySim('id,name,email
														1|Brad|brad@coldbox.org
														2|Luis|lmajano@ortussolutions.com
														3|Mickey|mickey@mouse.com')>

			<cfset cache.set("bigData",bigData)>
					
		</cfif>
																
		<cfreturn bigData>

	</cffunction>

</cfcomponent>