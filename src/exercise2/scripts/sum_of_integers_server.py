#!/usr/bin/env python

from __future__ import print_function

from exercise2.srv import SumOfInts, SumOfIntsResponse
import rospy


def handle_sum_of_ints(req):
    print("Returning the sum of %s integers" % (req.a))
    return SumOfIntsResponse(req.a * (req.a + 1) / 2)


def sum_of_ints_server():
    rospy.init_node('sum_of_ints_server')
    s = rospy.Service('sum_of_ints', SumOfInts, handle_sum_of_ints)
    print("Ready to sum the ints.")
    rospy.spin()


if __name__ == "__main__":
    sum_of_ints_server()
