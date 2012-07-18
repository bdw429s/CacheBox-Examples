<cfoutput>
<h1>Example 6</h1>
<h2>Ceating Custom Caches</h2>
<br>
If we had any more caching, we'd be nuts.  Cashew nuts!<br>
<br>
<br>
item1: #prc.myCoolCache.get("item1")#<br>
item2: #prc.myCoolCache.get("item2")#<br>
<br>
item3: #prc.myAwesomeCache.get("item3")#<br>
item4: #prc.myAwesomeCache.get("item4")#<br>
<br>
item5: #prc.totallyTubularCache.get("item5")#<br>
item6: #prc.totallyTubularCache.get("item6")#<br>
item7: <cfdump var="#prc.totallyTubularCache.get("item7")#">
<br>
<br>
<a href="/">Back Home</a>
</cfoutput>