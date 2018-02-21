#!/bin/bash
OutFileName="merge.csv"                       # Fix the output name this will be 
i=0                                       # Reset a counter
for filename in ./*.csv; do 
 if [ "$filename"  != "$OutFileName" ] ;      # Avoid recursion  filename replication
 then 
   if [[ $i -eq 0 ]] ; then 
      head -1  $filename >   $OutFileName # Copy header if it is the first file
   fi
   tail -n +2  $filename >>  $OutFileName # Append from the 2nd line each file
   i=$(( $i + 1 ))                        # Increase the counter by 1
 fi
done


