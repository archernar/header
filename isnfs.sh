isnfs () {                                                                                                                       
    LOCAL=`stat -f -c %T "$1"`                                                                                                   
    if [ "$LOCAL" == "nfs" ]; then                                                                                               
         RETVAL="YES"                                                                                                             
    else                                                                                                                         
         RETVAL="NO"                                                                                                              
    fi                                                                                                                           
}
