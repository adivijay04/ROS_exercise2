; Auto-generated. Do not edit!


(cl:in-package exercise2-srv)


;//! \htmlinclude SumOfInts-request.msg.html

(cl:defclass <SumOfInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass SumOfInts-request (<SumOfInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumOfInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumOfInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise2-srv:<SumOfInts-request> is deprecated: use exercise2-srv:SumOfInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SumOfInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:a-val is deprecated.  Use exercise2-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumOfInts-request>) ostream)
  "Serializes a message object of type '<SumOfInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumOfInts-request>) istream)
  "Deserializes a message object of type '<SumOfInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumOfInts-request>)))
  "Returns string type for a service object of type '<SumOfInts-request>"
  "exercise2/SumOfIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumOfInts-request)))
  "Returns string type for a service object of type 'SumOfInts-request"
  "exercise2/SumOfIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumOfInts-request>)))
  "Returns md5sum for a message object of type '<SumOfInts-request>"
  "0cd2157d7eaac1ba7a7e9dde0a510aef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumOfInts-request)))
  "Returns md5sum for a message object of type 'SumOfInts-request"
  "0cd2157d7eaac1ba7a7e9dde0a510aef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumOfInts-request>)))
  "Returns full string definition for message of type '<SumOfInts-request>"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumOfInts-request)))
  "Returns full string definition for message of type 'SumOfInts-request"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumOfInts-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumOfInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SumOfInts-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude SumOfInts-response.msg.html

(cl:defclass <SumOfInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass SumOfInts-response (<SumOfInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumOfInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumOfInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercise2-srv:<SumOfInts-response> is deprecated: use exercise2-srv:SumOfInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <SumOfInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercise2-srv:sum-val is deprecated.  Use exercise2-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumOfInts-response>) ostream)
  "Serializes a message object of type '<SumOfInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumOfInts-response>) istream)
  "Deserializes a message object of type '<SumOfInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumOfInts-response>)))
  "Returns string type for a service object of type '<SumOfInts-response>"
  "exercise2/SumOfIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumOfInts-response)))
  "Returns string type for a service object of type 'SumOfInts-response"
  "exercise2/SumOfIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumOfInts-response>)))
  "Returns md5sum for a message object of type '<SumOfInts-response>"
  "0cd2157d7eaac1ba7a7e9dde0a510aef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumOfInts-response)))
  "Returns md5sum for a message object of type 'SumOfInts-response"
  "0cd2157d7eaac1ba7a7e9dde0a510aef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumOfInts-response>)))
  "Returns full string definition for message of type '<SumOfInts-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumOfInts-response)))
  "Returns full string definition for message of type 'SumOfInts-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumOfInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumOfInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SumOfInts-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SumOfInts)))
  'SumOfInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SumOfInts)))
  'SumOfInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumOfInts)))
  "Returns string type for a service object of type '<SumOfInts>"
  "exercise2/SumOfInts")