while [ $ZEROS != $DIFFZEROS ]

 do

 let "NONCE += 1"

 HASH=$(printf -- "`cat $1`\n\n## Nonce: #################################################################################\n$NONCE\n" | md5sum)

 HASH=$(echo $HASH | cut -d" " -f1)

 echo $HASH

 ZEROS=$(echo $HASH | cut -c1-$DIFF)

done
