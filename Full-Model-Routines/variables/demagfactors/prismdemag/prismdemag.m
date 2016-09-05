function pdemag = prismdemag(a, b, c)
t1 = log(((a.^2 + b.^2 + c.^2).^(1/2) - a)./((a.^2 + b.^2 + c.^2).^(1/2) + a) ).*(b.^2 - c.^2)./(2*b.*c);
t2 = log(((a.^2 + b.^2 + c.^2).^(1/2) - b)./((a.^2 + b.^2 + c.^2).^(1/2) + b) ).*(a.^2 - c.^2)./(2*a.*c);
t3 = log(((a.^2 + b.^2).^(1/2) + a)./((a.^2 + b.^2).^(1/2) - a) ).*b./(2*c);
t4 = log(((a.^2 + b.^2).^(1/2) + b)./((a.^2 + b.^2).^(1/2) - b) ).*a./(2*c);
t5 = log(((b.^2 + c.^2).^(1/2) - b)./((b.^2 + c.^2).^(1/2) + b) ).*c./(2*a);
t6 = log(((a.^2 + c.^2).^(1/2) - a)./((a.^2 + c.^2).^(1/2) + a) ).*c./(2*b);
t7 = 2*atan(a.*b./(c.*(a.^2 + b.^2 + c.^2).^(1/2)));
t8 = (a.^3 + b.^3 - 2*c.^3)./(3*a.*b.*c) + (a.^2 + b.^2 - 2*c.^2).*((a.^2 + b.^2 + c.^2).^(1/2))./(3*a.*b.*c);
t9 = ((a.^2 + c.^2).^(1/2) + (b.^2 + c.^2).^(1/2)).*c./(a.*b);
t10 = -((a.^2 + b.^2).^(3/2) + (b.^2 + c.^2).^(3/2) + (c.^2 + a.^2).^(3/2) )./(3*a.*b.*c);
pdemag = (t1 + t2 + t3 + t4 + t5 + t6 + t7 + t8 + t9 + t10)/pi;