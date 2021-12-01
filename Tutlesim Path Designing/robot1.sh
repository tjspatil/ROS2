for i in 1 2 3 4 5 6
do
 ros2 topic pub -1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 5.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.5, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -5.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.5, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
done

#home location
#ros2 topic pub -1 /turtlesim1/turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 5.5, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"

