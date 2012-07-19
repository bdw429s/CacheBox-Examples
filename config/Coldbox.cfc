<cfcomponent output="false" hint="My App Configuration">
<cfscript>
	
// Configure ColdBox Application
function configure(){

	// coldbox directives
	coldbox = {
		//Application Setup
		appName 				= "Example App",
		
		//Development Settings
		debugMode				= true,
		handlersIndexAutoReload = true,
		
		//Implicit Events
		defaultEvent			= "general.index",
			
		//Application Aspects
		handlerCaching 			= false,
		eventCaching			= false
	};
			
	//Layout Settings
	layoutSettings = {
		defaultLayout = "Layout.Main.cfm"
	};
	
	//Register interceptors as an array, we need order
	interceptors = [
		 //SES
		 {class="coldbox.system.interceptors.SES"}
	];
	
}
	
</cfscript>
</cfcomponent>