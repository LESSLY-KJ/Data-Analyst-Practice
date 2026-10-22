import numpy as np

data = np.array([45, 48, 52, 50, 49, 1200])

print("Calculated Mean (Distorted):", np.mean(data))
print("Calculated Median (Robust):", np.median(data))

q75, q25 = np.percentile(data, [75, 25])
iqr = q75 - q25
upper_fence = q75 + (1.5 * iqr)

outliers = data[data > upper_fence]
print("Upper Fence Threshold:", upper_fence)
print("Detected Outlier(s):", outliers)
