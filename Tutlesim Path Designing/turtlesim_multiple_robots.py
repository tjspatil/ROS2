from launch import LaunchDescription
from launch_ros.actions import Node
import rclpy
def generate_launch_description():
    return LaunchDescription([
        Node(
            package='turtlesim',
            namespace='turtlesim1',
            executable='turtlesim_node',
            name='sim'
        ),
    ])

class trace_path_node(Node):
    def __init__(self):
        super().__init__("Path Tracing")
        self.trace_path = self.create_publisher(
            float, "Path", 10)
        self.path_timer_ = self.create_timer(
            2.0, self.trace_path)

    def trace_path(self):
        setPath = {linear: {x: 3.0, y: 0.0, z: 0.0}, angular: {x: 2.0, y: 0.0, z: 2.0}}
        msg = float()
        msg.data = setPath
        self.trace_path.publish(msg)

def main(args=None):
    rclpy.init(args=args)
    node = trace_path_node()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == "__main__":
    main()