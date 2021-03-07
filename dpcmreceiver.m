for n=1:length(x)
	if n==1
	    xq(n)=eq(n);
    else
        xq(n)=eq(n)+xq(n-1);
end;
plot (t,xqr,'m-');
xlabel('Time');
ylable('amplitude');
title('Reconstructed signal');


[num den]=butter(2,4*fm/fs);
Rec_op=filter(num,den,xqr);
Figure(2);
plot (t,rec_op,'m-');
xlabel('Time');
ylable('amplitude');
title('Smoothed signal');
