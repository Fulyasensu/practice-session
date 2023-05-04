

Map<string, String> zipCodeMap = new Map<string, String>();
zipCodeMap.put('30090','ayse');

Map<string, integer>itemQuantityMap = new Map<string, integer>();
itemQuantityMap.put('apple', 5);
itemQuantityMap.put('orange', 5);
itemQuantityMap.put('football', 5);
itemQuantityMap.put('LED',5);
itemQuantityMap.put('Notebooks', 6);
itemQuantityMap.put('Pen', 21);

integer sizeMap= itemQuantityMap.size();
System.debug('item to shops '+ sizeMap);

string getQuantityOf = 'Apple';
// we are getting value from a particular key
integer quantityIS= itemQuantityMap.get(getQuantityOf);
System.debug(getQuantityOf + 'Quantity is ' + quantityIS);

string getQuantityOf_3 ='Apples';
boolean abc = itemQuantityMap.containsKey(getQuantityOf_3);
if(abc){
    integer quantityIS_3= itemQuantityMap.get(getQuantityOf_3);
}else { 
    System.debug(getQuantityOf_3 + 'is not inthe lsit');

    
}
