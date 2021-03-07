fm=4;
fs=20*fm; %sampling frequency
am=2;%Amplitude
t=0:1/fs:1;%time
x=am*cos(2*pi*fm*t)
figure(1);
plot(t,x);
xlabel('Time');
ylable('amplitude');
title('Input Sinusoidal signal');
for n=1:length(x)
	if n==1
	    e(n)=x(n);
        eq(n)=round(e(n));
	    xq(n)=eq(n);
    else
        e(n)=x(n)-xq(n-1);
        eq(n)=round(e(n));
        xq(n)=eq(n)+xq(n-1);
end;