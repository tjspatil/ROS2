#spawn robot
#ros2 service call /spawn turtlesim/srv/Spawn "{x: 0.5, y: 0.5, theta: 0.0, name:''}"

for i in 1 2 3 4 5
do
 ros2 topic pub -1 /turtlesim1/turtle2/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 10.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle2/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle2/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -10.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
 ros2 topic pub -1 /turtlesim1/turtle2/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
done

