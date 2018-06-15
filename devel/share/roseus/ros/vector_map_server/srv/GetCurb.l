;; Auto-generated. Do not edit!


(when (boundp 'vector_map_server::GetCurb)
  (if (not (find-package "VECTOR_MAP_SERVER"))
    (make-package "VECTOR_MAP_SERVER"))
  (shadow 'GetCurb (find-package "VECTOR_MAP_SERVER")))
(unless (find-package "VECTOR_MAP_SERVER::GETCURB")
  (make-package "VECTOR_MAP_SERVER::GETCURB"))
(unless (find-package "VECTOR_MAP_SERVER::GETCURBREQUEST")
  (make-package "VECTOR_MAP_SERVER::GETCURBREQUEST"))
(unless (find-package "VECTOR_MAP_SERVER::GETCURBRESPONSE")
  (make-package "VECTOR_MAP_SERVER::GETCURBRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "WAYPOINT_FOLLOWER_MSGS"))
  (ros::roseus-add-msgs "waypoint_follower_msgs"))


(if (not (find-package "VECTOR_MAP_MSGS"))
  (ros::roseus-add-msgs "vector_map_msgs"))


(defclass vector_map_server::GetCurbRequest
  :super ros::object
  :slots (_pose _waypoints ))

(defmethod vector_map_server::GetCurbRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:waypoints __waypoints) (instance waypoint_follower_msgs::lane :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _waypoints __waypoints)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; waypoint_follower_msgs/lane _waypoints
    (send _waypoints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; waypoint_follower_msgs/lane _waypoints
       (send _waypoints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; waypoint_follower_msgs/lane _waypoints
     (send _waypoints :deserialize buf ptr-) (incf ptr- (send _waypoints :serialization-length))
   ;;
   self)
  )

(defclass vector_map_server::GetCurbResponse
  :super ros::object
  :slots (_objects ))

(defmethod vector_map_server::GetCurbResponse
  (:init
   (&key
    ((:objects __objects) (instance vector_map_msgs::CurbArray :init))
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; vector_map_msgs/CurbArray _objects
    (send _objects :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vector_map_msgs/CurbArray _objects
       (send _objects :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vector_map_msgs/CurbArray _objects
     (send _objects :deserialize buf ptr-) (incf ptr- (send _objects :serialization-length))
   ;;
   self)
  )

(defclass vector_map_server::GetCurb
  :super ros::object
  :slots ())

(setf (get vector_map_server::GetCurb :md5sum-) "332c2d5fb151608fba70e8f757c2553e")
(setf (get vector_map_server::GetCurb :datatype-) "vector_map_server/GetCurb")
(setf (get vector_map_server::GetCurb :request) vector_map_server::GetCurbRequest)
(setf (get vector_map_server::GetCurb :response) vector_map_server::GetCurbResponse)

(defmethod vector_map_server::GetCurbRequest
  (:response () (instance vector_map_server::GetCurbResponse :init)))

(setf (get vector_map_server::GetCurbRequest :md5sum-) "332c2d5fb151608fba70e8f757c2553e")
(setf (get vector_map_server::GetCurbRequest :datatype-) "vector_map_server/GetCurbRequest")
(setf (get vector_map_server::GetCurbRequest :definition-)
      "geometry_msgs/PoseStamped pose
waypoint_follower_msgs/lane waypoints

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: waypoint_follower_msgs/lane
Header header
int32 increment
waypoint[] waypoints
================================================================================
MSG: waypoint_follower_msgs/waypoint
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
dtlane dtlane
int32 change_flag

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: waypoint_follower_msgs/dtlane
float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw
---
vector_map_msgs/CurbArray objects


================================================================================
MSG: vector_map_msgs/CurbArray
Header header
Curb[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: vector_map_msgs/Curb
# dir
uint8 RIGHT=0
uint8 LEFT=1

# Ver 1.00
int32 id
int32 lid
float64 height
float64 width
int32 dir
int32 linkid
")

(setf (get vector_map_server::GetCurbResponse :md5sum-) "332c2d5fb151608fba70e8f757c2553e")
(setf (get vector_map_server::GetCurbResponse :datatype-) "vector_map_server/GetCurbResponse")
(setf (get vector_map_server::GetCurbResponse :definition-)
      "geometry_msgs/PoseStamped pose
waypoint_follower_msgs/lane waypoints

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: waypoint_follower_msgs/lane
Header header
int32 increment
waypoint[] waypoints
================================================================================
MSG: waypoint_follower_msgs/waypoint
geometry_msgs/PoseStamped pose
geometry_msgs/TwistStamped twist
dtlane dtlane
int32 change_flag

================================================================================
MSG: geometry_msgs/TwistStamped
# A twist with reference coordinate frame and timestamp
Header header
Twist twist

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: waypoint_follower_msgs/dtlane
float64 dist
float64 dir
float64 apara
float64 r
float64 slope
float64 cant
float64 lw
float64 rw
---
vector_map_msgs/CurbArray objects


================================================================================
MSG: vector_map_msgs/CurbArray
Header header
Curb[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: vector_map_msgs/Curb
# dir
uint8 RIGHT=0
uint8 LEFT=1

# Ver 1.00
int32 id
int32 lid
float64 height
float64 width
int32 dir
int32 linkid
")



(provide :vector_map_server/GetCurb "332c2d5fb151608fba70e8f757c2553e")

