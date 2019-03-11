
phi n tmp | (n - 1) == tmp = 0
          | n > tmp && gcd n tmp == 1 = 1 + phi n (tmp+1)
          | n > tmp && gcd n tmp /= 1 = 0 + phi n (tmp+1)