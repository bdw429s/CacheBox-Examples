<cfcomponent output="false">

	<!--- Default Action --->
	<cffunction name="index" returntype="void" output="false" hint="My main event">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
		
		<cfset rc.welcomeMessage = "Welcome to ColdBox!">	
		
		<cfset event.setView("home")>
	</cffunction>

	<cffunction name="example1" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset event.setView(name="example1")>
		<!--- <cfset event.setView(name="example1", cache=true)> --->
	</cffunction>

	<cffunction name="example2" returntype="void" output="false">
	<!--- <cffunction name="example2" returntype="void" output="false" cache=true cacheTimeout=30> --->
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
		
		<!--- Dood, this is really complicated --->
		<cfset sleep(10000)>
				
		<cfset event.setView(name="example2")>
	</cffunction>

	<cffunction name="example3" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset rc.widgetService = wireBox.getInstance("widgetService")>
		
		<cfset event.setView(name="example3")>
	</cffunction>
		
</cfcomponent>