"""
This module is designed to know if a number is prime or not
"""


class PrimeClass(object):
    """
    The class PrimeClass contains a function
    is_prime is in charge of determining if it is prime or not
    """

    def is_prime(self, num_int):
        """
        1.- It verifies that the numbers are positive and
        not the number 1 since they do not belong to the prime numbers
        2.- El ciclo empieza en 2 hasta num_int -1 verificando
        que se cumpla la condición de numero primo
        3.- If the number is prime, it will return true,
        otherwise it will return false
        """
        # your primes code here
        if num_int < 2:
            return False
        for num in xrange(2, num_int):
            if num_int % num == 0:
                return False
        return True
