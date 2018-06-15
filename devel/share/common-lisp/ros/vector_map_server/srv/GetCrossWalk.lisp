; Auto-generated. Do not edit!


(cl:in-package vector_map_server-srv)


;//! \htmlinclude GetCrossWalk-request.msg.html

(cl:defclass <GetCrossWalk-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type waypoint_follower_msgs-msg:lane
    :initform (cl:make-instance 'waypoint_follower_msgs-msg:lane)))
)

(cl:defclass GetCrossWalk-request (<GetCrossWalk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCrossWalk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCrossWalk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetCrossWalk-request> is deprecated: use vector_map_server-srv:GetCrossWalk-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetCrossWalk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:pose-val is deprecated.  Use vector_map_server-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetCrossWalk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:waypoints-val is deprecated.  Use vector_map_server-srv:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCrossWalk-request>) ostream)
  "Serializes a message object of type '<GetCrossWalk-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCrossWalk-request>) istream)
  "Deserializes a message object of type '<GetCrossWalk-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCrossWalk-request>)))
  "Returns string type for a service object of type '<GetCrossWalk-request>"
  "vector_map_server/GetCrossWalkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCrossWalk-request)))
  "Returns string type for a service object of type 'GetCrossWalk-request"
  "vector_map_server/GetCrossWalkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCrossWalk-request>)))
  "Returns md5sum for a message object of type '<GetCrossWalk-request>"
  "7d0a50198cc16871310c4fff948bc656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCrossWalk-request)))
  "Returns md5sum for a message object of type 'GetCrossWalk-request"
  "7d0a50198cc16871310c4fff948bc656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCrossWalk-request>)))
  "Returns full string definition for message of type '<GetCrossWalk-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCrossWalk-request)))
  "Returns full string definition for message of type 'GetCrossWalk-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%waypoint_follower_msgs/lane waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoint_follower_msgs/lane~%Header header~%int32 increment~%waypoint[] waypoints~%================================================================================~%MSG: waypoint_follower_msgs/waypoint~%geometry_msgs/PoseStamped pose~%geometry_msgs/TwistStamped twist~%dtlane dtlane~%int32 change_flag~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: waypoint_follower_msgs/dtlane~%float64 dist~%float64 dir~%float64 apara~%float64 r~%float64 slope~%float64 cant~%float64 lw~%float64 rw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCrossWalk-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCrossWalk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCrossWalk-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':waypoints (waypoints msg))
))
;//! \htmlinclude GetCrossWalk-response.msg.html

(cl:defclass <GetCrossWalk-response> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type vector_map_msgs-msg:CrossWalkArray
    :initform (cl:make-instance 'vector_map_msgs-msg:CrossWalkArray)))
)

(cl:defclass GetCrossWalk-response (<GetCrossWalk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCrossWalk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCrossWalk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_server-srv:<GetCrossWalk-response> is deprecated: use vector_map_server-srv:GetCrossWalk-response instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <GetCrossWalk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_server-srv:objects-val is deprecated.  Use vector_map_server-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCrossWalk-response>) ostream)
  "Serializes a message object of type '<GetCrossWalk-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCrossWalk-response>) istream)
  "Deserializes a message object of type '<GetCrossWalk-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCrossWalk-response>)))
  "Returns string type for a service object of type '<GetCrossWalk-response>"
  "vector_map_server/GetCrossWalkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCrossWalk-response)))
  "Returns string type for a service object of type 'GetCrossWalk-response"
  "vector_map_server/GetCrossWalkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCrossWalk-response>)))
  "Returns md5sum for a message object of type '<GetCrossWalk-response>"
  "7d0a50198cc16871310c4fff948bc656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCrossWalk-response)))
  "Returns md5sum for a message object of type 'GetCrossWalk-response"
  "7d0a50198cc16871310c4fff948bc656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCrossWalk-response>)))
  "Returns full string definition for message of type '<GetCrossWalk-response>"
  (cl:format cl:nil "vector_map_msgs/CrossWalkArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/CrossWalkArray~%Header header~%CrossWalk[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/CrossWalk~%# type~%uint8 CLOSURE_LINE=0~%uint8 STRIPE_PATTERN=1~%uint8 BICYCLE_LANE=2~%~%# Ver 1.00~%int32 id~%int32 aid~%int32 type~%int32 bdid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCrossWalk-response)))
  "Returns full string definition for message of type 'GetCrossWalk-response"
  (cl:format cl:nil "vector_map_msgs/CrossWalkArray objects~%~%~%================================================================================~%MSG: vector_map_msgs/CrossWalkArray~%Header header~%CrossWalk[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/CrossWalk~%# type~%uint8 CLOSURE_LINE=0~%uint8 STRIPE_PATTERN=1~%uint8 BICYCLE_LANE=2~%~%# Ver 1.00~%int32 id~%int32 aid~%int32 type~%int32 bdid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCrossWalk-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCrossWalk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCrossWalk-response
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCrossWalk)))
  'GetCrossWalk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCrossWalk)))
  'GetCrossWalk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCrossWalk)))
  "Returns string type for a service object of type '<GetCrossWalk>"
  "vector_map_server/GetCrossWalk")