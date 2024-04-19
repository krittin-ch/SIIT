num = [1 1];
den = conv(conv([1 2], [1 3]), [1 10 50]);

sys = tf(num, den);

sisotool(sys)