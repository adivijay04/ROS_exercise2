;; Auto-generated. Do not edit!


(when (boundp 'exercise2::SumOfInts)
  (if (not (find-package "EXERCISE2"))
    (make-package "EXERCISE2"))
  (shadow 'SumOfInts (find-package "EXERCISE2")))
(unless (find-package "EXERCISE2::SUMOFINTS")
  (make-package "EXERCISE2::SUMOFINTS"))
(unless (find-package "EXERCISE2::SUMOFINTSREQUEST")
  (make-package "EXERCISE2::SUMOFINTSREQUEST"))
(unless (find-package "EXERCISE2::SUMOFINTSRESPONSE")
  (make-package "EXERCISE2::SUMOFINTSRESPONSE"))

(in-package "ROS")





(defclass exercise2::SumOfIntsRequest
  :super ros::object
  :slots (_a ))

(defmethod exercise2::SumOfIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass exercise2::SumOfIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod exercise2::SumOfIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass exercise2::SumOfInts
  :super ros::object
  :slots ())

(setf (get exercise2::SumOfInts :md5sum-) "0cd2157d7eaac1ba7a7e9dde0a510aef")
(setf (get exercise2::SumOfInts :datatype-) "exercise2/SumOfInts")
(setf (get exercise2::SumOfInts :request) exercise2::SumOfIntsRequest)
(setf (get exercise2::SumOfInts :response) exercise2::SumOfIntsResponse)

(defmethod exercise2::SumOfIntsRequest
  (:response () (instance exercise2::SumOfIntsResponse :init)))

(setf (get exercise2::SumOfIntsRequest :md5sum-) "0cd2157d7eaac1ba7a7e9dde0a510aef")
(setf (get exercise2::SumOfIntsRequest :datatype-) "exercise2/SumOfIntsRequest")
(setf (get exercise2::SumOfIntsRequest :definition-)
      "int64 a
---
int64 sum

")

(setf (get exercise2::SumOfIntsResponse :md5sum-) "0cd2157d7eaac1ba7a7e9dde0a510aef")
(setf (get exercise2::SumOfIntsResponse :datatype-) "exercise2/SumOfIntsResponse")
(setf (get exercise2::SumOfIntsResponse :definition-)
      "int64 a
---
int64 sum

")



(provide :exercise2/SumOfInts "0cd2157d7eaac1ba7a7e9dde0a510aef")


