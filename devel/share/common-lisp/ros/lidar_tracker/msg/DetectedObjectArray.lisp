; Auto-generated. Do not edit!


(cl:in-package lidar_tracker-msg)


;//! \htmlinclude DetectedObjectArray.msg.html

(cl:defclass <DetectedObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector lidar_tracker-msg:DetectedObject)
   :initform (cl:make-array 0 :element-type 'lidar_tracker-msg:DetectedObject :initial-element (cl:make-instance 'lidar_tracker-msg:DetectedObject))))
)

(cl:defclass DetectedObjectArray (<DetectedObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_tracker-msg:<DetectedObjectArray> is deprecated: use lidar_tracker-msg:DetectedObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:header-val is deprecated.  Use lidar_tracker-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_tracker-msg:objects-val is deprecated.  Use lidar_tracker-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjectArray>) ostream)
  "Serializes a message object of type '<DetectedObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjectArray>) istream)
  "Deserializes a message object of type '<DetectedObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidar_tracker-msg:DetectedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjectArray>)))
  "Returns string type for a message object of type '<DetectedObjectArray>"
  "lidar_tracker/DetectedObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjectArray)))
  "Returns string type for a message object of type 'DetectedObjectArray"
  "lidar_tracker/DetectedObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjectArray>)))
  "Returns md5sum for a message object of type '<DetectedObjectArray>"
  "97ce09d3045ede2dcb694cef3e3d2f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjectArray)))
  "Returns md5sum for a message object of type 'DetectedObjectArray"
  "97ce09d3045ede2dcb694cef3e3d2f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjectArray>)))
  "Returns full string definition for message of type '<DetectedObjectArray>"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_tracker/DetectedObject~%std_msgs/Header header~%~%uint32 id~%string label~%~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Vector3 variance~%geometry_msgs/Twist velocity~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjectArray)))
  "Returns full string definition for message of type 'DetectedObjectArray"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject[] objects~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidar_tracker/DetectedObject~%std_msgs/Header header~%~%uint32 id~%string label~%~%geometry_msgs/Pose pose~%geometry_msgs/Vector3 dimensions~%geometry_msgs/Vector3 variance~%geometry_msgs/Twist velocity~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
