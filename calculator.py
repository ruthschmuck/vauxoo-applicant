"""
This module adds the elements within a list
"""


class CalculatorClass(object):
    """
    There is a sum function inside of the class.
    It is in charge of returning the sum
    """

    def sum(self, num_list):
        """
        The sum function receives num_list as list.
        The reduce() function calculates the sum of
        the elements within the list
        """
        # your sum code here
        return reduce(lambda x, y: x + y, num_list)
