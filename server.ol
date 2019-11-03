execution { concurrent }

include "runtime.iol"
include "twiceInterface.iol"

inputPort TwiceService {
	Location: "socket://localhost:8000"
	Protocol: sodep
	Interfaces: TwiceInterface
}

main
{
	twice( number )( result )
	{
		getenv@Runtime( "HOSTNAME" )( hostname_env )
		result = hostname_env + " -> " + number * 2
	}
}