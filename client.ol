include "console.iol"
include "twiceInterface.iol"

outputPort TwiceService {
        Location: "socket://192.168.99.100:30095"
        Protocol: sodep
        Interfaces: TwiceInterface
}

main
{
        twice@TwiceService( 5 )( response );
        println@Console( response )()
}
