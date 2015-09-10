#include <iostream>

int main() {
	long long int a, b;
	std::cin >> a >> b;
	
	long long int orig_a = a, orig_b = b;
	long long int q, r, sa = 1, sb = 0, ta = 0, tb = 1, sc, tc;
	
	do {
		q = a/b;
		r = a-q*b;
		a = b; b = r;
		sc = sa-q*sb;
		sa = sb; sb = sc;
		tc = ta-q*tb;
		ta = tb; tb = tc;
	} while (b != 0);
	
	std::cout << "MCD = " << a << " = " << sa << "x" << orig_a << " + " << ta << "x" << orig_b << "\n";
}
