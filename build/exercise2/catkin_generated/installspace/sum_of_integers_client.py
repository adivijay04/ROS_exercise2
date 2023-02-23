#!/usr/bin/env python2

from __future__ import print_function

import sys
import rospy
from exercise2.srv import *


def sum_of_ints_client(x):
    rospy.wait_for_service('sum_of_ints')
    try:
        sum_of_ints = rospy.ServiceProxy('sum_of_ints', SumOfInts)
        resp1 = sum_of_ints(x)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s" % e)


def usage():
    return "%s [x]" % sys.argv[0]


if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting for sum of %s integers" % (x))
    print("The sum of %s is %s" % (x, sum_of_ints_client(x)))
