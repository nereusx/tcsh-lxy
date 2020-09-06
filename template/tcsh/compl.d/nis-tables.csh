# 

set list = ( passwd group netgroup hosts ethers aliases networks services protocols rpc )

complete ypcat "p/1/($list)/"

