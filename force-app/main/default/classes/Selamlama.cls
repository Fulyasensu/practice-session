public  class Selamlama {
    public void Selam(string dil) {
        string slm;
if(dil== 'Ingilizce'){
    slm ='hello';
}
else if(dil=='Turkce'){
    slm='Merhaba';
}else if (dil== 'Hince'){
    slm= 'namaste';}

else{
    dil='merhaba';
}
System.debug(slm);

    }
}