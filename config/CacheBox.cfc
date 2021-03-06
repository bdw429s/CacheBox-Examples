﻿<!-----------------------------------------------------------------------
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Author 	 :	Luis Majano
Description :
	My application's CacheBox configuration structure
----------------------------------------------------------------------->
<cfcomponent output="false">
<cfscript>
	
	/**
	* Configure CacheBox for ColdBox Application Operation
	*/
	function configure(){
		
		// The CacheBox configuration structure DSL
		cacheBox = {
			// LogBox config already in coldbox app, not needed
			// logBoxConfig = "coldbox.system.web.config.LogBox", 
			
			// The defaultCache has an implicit name "default" which is a reserved cache name
			// It also has a default provider of cachebox which cannot be changed.
			// All timeouts are in minutes
			defaultCache = {
				objectDefaultTimeout = 120, //two hours default
				objectDefaultLastAccessTimeout = 30, //30 minutes idle time
				useLastAccessTimeouts = true,
				reapFrequency = 2,
				freeMemoryPercentageThreshold = 0,
				evictionPolicy = "LRU",
				evictCount = 1,
				maxObjects = 300,
				objectStore = "ConcurrentStore", //guaranteed objects
				coldboxEnabled = true
			},
			
			// Register all the custom named caches you like here
			caches = {
				// Named cache for all coldbox event and view template caching
				template = {
					provider = "coldbox.system.cache.providers.CacheBoxColdBoxProvider",
					properties = {
						objectDefaultTimeout = 120,
						objectDefaultLastAccessTimeout = 30,
						useLastAccessTimeouts = true,
						freeMemoryPercentageThreshold = 0,
						reapFrequency = 2,
						evictionPolicy = "LRU",
						evictCount = 2,
						maxObjects = 300,
						objectStore = "ConcurrentSoftReferenceStore" //memory sensitive
					}
				},
				myCoolCache = {
					provider = "coldbox.system.cache.providers.CFProvider"
				},
				myAwesomeCache = {
					provider = "coldbox.system.cache.providers.CacheBoxColdBoxProvider",
					properties = {
						objectDefaultTimeout = 500,
						reapFrequency = 15,
						evictionPolicy = "LFU",
						evictCount = 5,
						maxObjects = 500,
						objectStore = "DiskStore",
						directoryPath = "#getDirectoryFromPath(getCurrentTemplatePath())#../diskStore",
						autoExpandPath = false
					}
				},
				totallyTubularCache = {
					provider = "coldbox.system.cache.providers.CacheBoxColdBoxProvider",
					properties = {
						objectDefaultTimeout = 30,
						reapFrequency = 5,
						evictionPolicy = "LFU",
						evictCount = 3,
						maxObjects = 100000,
						objectStore = "JDBCStore",
						DSN = "JDBCStore",
						table = "totallyTubularCacheTable"
					}
				}/*,
				sizeAwareCache = {
					provider = "coldbox.system.cache.providers.CacheBoxColdBoxProvider",
					properties = {
						evictionPolicy = "model.cache.largestItem",
						evictCount = 1,
						maxObjects = 3,
						objectStore = "model.cache.sizeAwareJDBCStore",
						DSN = "JDBCStore",
						table = "sizeAwareCacheTable"
					}
				}*/

			}		
		};
	}	
</cfscript>
</cfcomponent>