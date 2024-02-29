import numpy as np
import open3d as o3d
import rospy
import sensor_msgs.point_cloud2 as pc2
from sensor_msgs.msg import PointCloud2
import time
from pyntcloud import PyntCloud
import pandas as pd
import matplotlib as plt

class PointCloudVisualizer:
    def __init__(self, topic):
        self.pc = o3d.PointCloud() #Open3d pointcloud object
        self.pcCache = np.empty((0,3)) #shape(0,3) numpy array with (x,y,z)
        self.topic = topic
        

    def parsePC(self, pc_msg):
        new_points = np.empty((0,3))
        for data in pc2.read_points(pc_msg, skip_nans=True):
            new_points = np.vstack((new_points,np.array([data[0], data[1], data[2]])))
        self.pcCache = np.vstack((self.pcCache, new_points))
        time.sleep(1)
        
        
    def writeFromCache(self):
        print("Writing")
        time.sleep(1)
        self.pc.points = o3d.Vector3dVector(self.pcCache)
        
    def openVis(self):
        plt.interactive(True)
        if self.pcCache.size == 0:
            return
        #convert to dataFrame
        df = pd.DataFrame(self.pcCache, columns=['x','y','z'])
        pyntcloud = PyntCloud(df)
        pyntcloud.plot(backend="matplotlib")
        
        
    def start(self):
        print("Collecting data.")
        rospy.init_node("pcdwrite")
        inStream = rospy.Subscriber(self.topic, PointCloud2, self.parsePC)
        rate = rospy.Rate(5)
        while not rospy.is_shutdown():
            vis.writeFromCache()
            vis.openVis()

if __name__ == "__main__":
    vis = PointCloudVisualizer("/cloud_registered")
    vis.start()
    
    

    
