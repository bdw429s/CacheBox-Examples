<cfcomponent output="false">
	<cfproperty name="totallyTubularCache" inject="cacheBox:totallyTubularCache">

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
				

		<cfset prc.widgetService = getModel("widgetService")>
		
		<cfset event.setView(name="example3")>
	</cffunction>

	<cffunction name="example4" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset prc.bigData = getModel("foobarService").getBigData()>
		
		<cfset event.setView(name="example4")>
	</cffunction>
		
	<cffunction name="example5" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset prc.bigData = getModel("funeralService").getBigData()>
		
		<cfset event.setView(name="example5")>
	</cffunction>
		
	<cffunction name="example6" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset prc.myCoolCache = cacheBox.getCache("myCoolCache")>
		<cfset prc.myAwesomeCache = cacheBox.getCache("myAwesomeCache")>
		<cfset prc.totallyTubularCache = totallyTubularCache>
		
		<cfset prc.myCoolCache.set("item1","value1")>
		<cfset prc.myCoolCache.set("item2","value2")>
		
		<cfset prc.myAwesomeCache.set("item3","value3")>
		<cfset prc.myAwesomeCache.set("item4","value4")>
		
		<cfset prc.totallyTubularCache.set("item5","value5")>
		<cfset prc.totallyTubularCache.set("item6","value6")>
		<cfset prc.totallyTubularCache.set("item7",getModel("funeralService").getBigData())>
				
		<cfset event.setView(name="example6")>
	</cffunction>
		
	<cffunction name="example7" returntype="void" output="false">
		<cfargument name="event">
		<cfargument name="rc">
		<cfargument name="prc">
				
		<cfset prc.sizeAwareCache = cacheBox.getCache("sizeAwareCache")>
		<cfset prc.sizeAwareCache.set("big1","BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG ")>
		<cfset prc.sizeAwareCache.set("big2","BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG BIG ")>
		<cfset prc.sizeAwareCache.set("small1","small")>
		<cfset prc.sizeAwareCache.set("small2","small")>
		<cfset prc.sizeAwareCache.set("small3","small")>
				
		<cfset event.setView(name="example7")>
	</cffunction>
		
</cfcomponent>