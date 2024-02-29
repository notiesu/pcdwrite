import numpy as np
import open3d as o3d
import rospy
import sensor_msgs.point_cloud2 as pc2
from sensor_msgs.msg import PointCloud2
import time
from pyntcloud import PyntCloud
import pandas as pd

#For writing to pcd, then visualizing
class PointCloudVisualizer:
    def __init__(self, topic):
        self.pc = o3d.PointCloud()
        self.pcCache = np.empty((0,3))
        self.topic = topic
        

    def parsePC(self, pc_msg):
        new_points = np.empty((0,3))
        for data in pc2.read_points(pc_msg, skip_nans=True):
            new_points = np.vstack((new_points,np.array([data[0], data[1], data[2]])))
        self.pcCache = np.vstack((self.pcCache, new_points))
        time.sleep(1)
        
        
    def writeFromCache(self):
        print("ROS Node stopped. Writing cache to PCD...")
        print(np.asarray(self.pcCache))
        self.pc.points = o3d.Vector3dVector(self.pcCache)
        o3d.write_point_cloud("mapped.pcd", pointcloud=self.pc)
        
    def openVis(self):
        if self.pcCache.size == 0:
            return
        print("Opening visual...")
        pcd_load = o3d.read_point_cloud("mapped.pcd")
        o3d.draw_geometries([pcd_load])
        
    def start(self):
        print("Collecting data.")
        rospy.init_node("pcdwrite")
        inStream = rospy.Subscriber(self.topic, PointCloud2, self.parsePC)
        rate = rospy.Rate(5)
        rospy.spin()

if __name__ == "__main__":
    vis = PointCloudVisualizer("/cloud_registered")
    vis.start()