#!/usr/bin/gawk -f

BEGIN{
  FS="\\input{|}"
}{
  if(match($0,"(%*)(.*)\\input{(.*)}",a)){
	if(a[1]==""){
		system("./latex-flat.awk src/"a[3]".tex");
    }
  }
  else{
    print $0
  }
}
