<!-----------------------------------------------------------------------
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************

Author     :	Brad Wood
Date        :	07/19/2012
Description :
	This is the largestItem eviction policy for cachebox.
	It only works with stores which track size in their metadata such as the sizeAwareJDBCStore.
	It evicts the largest item in the cache first.
	
----------------------------------------------------------------------->
<cfcomponent output="false" 
			 hint="largestItem Eviction Policy Command" 
			 extends="coldbox.system.cache.policies.AbstractEvictionPolicy">

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->

	<!--- init --->
	<cffunction name="init" output="false" access="public" returntype="largestItem" hint="Constructor">
		<cfargument name="cacheProvider" type="any" required="true" hint="The associated cache provider of type: coldbox.system.cache.ICacheProvider" colddoc:generic="coldbox.system.cache.ICacheProvider"/>
		<cfscript>
			super.init(arguments.cacheProvider);
			
			return this;
		</cfscript>
	</cffunction>
	
<!------------------------------------------- PUBLIC ------------------------------------------->

	<!--- execute --->
	<cffunction name="execute" output="false" access="public" returntype="void" hint="Execute the policy">
		<cfscript>
			var index 		= "";
			
			// Get searchable index
			try{
				index = getAssociatedCache().getObjectStore().getIndexer().getSortedKeys("size","numeric","desc");
				// process evictions
				processEvictions( index );
			}
			catch(Any e){
				getLogger().error("Error sorting via store indexer #e.message# #e.detail# #e.stackTrace#.");
			}	
		</cfscript>
	</cffunction>

<!------------------------------------------- PRIVATE ------------------------------------------->
	
</cfcomponent>