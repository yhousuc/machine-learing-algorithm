function pop2=decodechrom(pop,spoint,length)
pop2=[];
while spoint<292
    pop1=pop(:,spoint:spoint+length-1);
    spoint=spoint+10;
    pop3=decodebinary(pop1);
    pop2=[pop2 pop3];
end
end
