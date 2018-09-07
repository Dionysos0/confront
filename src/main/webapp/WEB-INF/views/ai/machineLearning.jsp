<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../framework/header.jsp" %>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@include file="../framework/leftSide.jsp" %>
        <div class="right_col" style="background-color: #ffffff; min-height: 5150px;">
            <div style="">
                <h1 style="font-size: 26px; font-weight: 900; color: #000000">基于机器学习的卫星图像识别</h1>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">数据说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">数据集中有1794张卫星图像，其中有飞机图像706张，军舰图像1088张
                </p>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">目标说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    对目标图像进行判定，判定为飞机或军舰，在数据量足够支撑的情况下可以对飞机和军舰判断其型号和国别。
                </p>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">算法说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">本案例中使用的是传统机器学习方案，使用有监督学习和非监督学习。

                </p>
                <h2 style="font-size: 25px; font-weight: 800; color: #000000">Kmeans算法</h2>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">算法说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    k-平均算法源于信号处理中的一种向量量化方法，现在则更多地作为一种聚类分析方法流行于数据挖掘领域。k-平均聚类的目的是：把n个点（可以是样本的一次观察或一个实例）划分到k个聚类中，使得每个点都属于离他最近的均值（此即聚类中心）对应的聚类，以之作为聚类的标准。这个问题将归结为一个把数据空间划分为Voronoi
                    cells的问题。
                </p>
                <h4 style="font-size: 22px; font-weight: 600; color: #000000">算法核心公式</h4>
                <p style="font-size: 22px; font-weight: 600; color: #000000">目标函数 <br>
                    <img style="width: 800px; height: 280px" src="../images/machinelearning/k-means核心公式.gif" alt="">
                </p>
                <h5 style="font-size: 22px; font-weight: 600; color: #000000">最终结果</h5>
                <p style="font-size: 22px; font-weight: 600; color: #000000">acc = 0.692414752958

                </p>
                <h4 style="font-size: 24px; font-weight: 800; color: #000000">一、KNN算法</h4>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">算法说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    在模式识别领域中，最近邻居法（KNN算法，又译K-近邻算法）是一种用于分类和回归的非参数统计方法。在这两种情况下，输入包含特征空间中的k个最接近的训练样本。
                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    在k-NN分类中，输出是一个分类族群。一个对象的分类是由其邻居的“多数表决”确定的，k个最近邻居（k为正整数，通常较小）中最常见的分类决定了赋予该对象的类别。若k =
                    1，则该对象的类别直接由最近的一个节点赋予。
                    在k-NN回归中，输出是该对象的属性值。该值是其k个最近邻居的值的平均值。
                    最近邻居法采用向量空间模型来分类，概念为相同类别的案例，彼此的相似度高，而可以借由计算与已知类别案例之相似度，来评估未知类别案例可能的分类。

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">K-NN是一种基于实例的学习，或者是局部近似和将所有计算推迟到分类之后的惰性学习。

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    无论是分类还是回归，衡量邻居的权重都非常有用，使较近邻居的权重比较远邻居的权重大。例如，一种常见的加权方案是给每个邻居权重赋值为1/d，其中d是到邻居的距离。
                </p>
                <h5 style="font-size: 24px; font-weight: 800; color: #000000">算法核心公式</h5>
                <p style="font-size: 22px; font-weight: 600; color: #000000">KNN分类决策 <br>
                    <img style="width: 1120px; height: 160px" src="../images/machinelearning/KNN分类决策.gif" alt="">

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">曼哈顿距离公式 <br>
                    <img style="width: 960px; height: 220px" src="../images/machinelearning/KNN中曼哈顿距离.gif" alt="">

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">闵可夫斯基距离公式 <br>
                    <img style="width: 960px; height: 180px" src="../images/machinelearning/KNN中闵可夫斯基距离.gif" alt="">

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">欧式距离公式 <br>
                    <img style="width: 960px; height: 220px" src="../images/machinelearning/KNN中欧式距离.gif" alt="">

                </p>
                <h5 style="font-size: 24px; font-weight: 800; color: #000000">最终结果</h5>
                <p style="font-size: 22px; font-weight: 600; color: #000000">acc = 0.551820728291
                </p>
                <h4 style="font-size: 24px; font-weight: 800; color: #000000">SVM算法</h4>
                <h3 style="font-size: 24px; font-weight: 800; color: #000000">算法说明</h3>
                <p style="font-size: 22px; font-weight: 600; color: #000000">在机器学习中，支持向量机（英语：support vector
                    machine，常简称为SVM，又名支持向量网络）是在分类与回归分析中分析数据的监督式学习模型与相关的学习算法。给定一组训练实例，每个训练实例被标记为属于两个类别中的一个或另一个，SVM训练算法创建一个将新的实例分配给两个类别之一的模型，使其成为非概率二元线性分类器。SVM模型是将实例表示为空间中的点，这样映射就使得单独类别的实例被尽可能宽的明显的间隔分开。然后，将新的实例映射到同一空间，并基于它们落在间隔的哪一侧来预测所属类别。
                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    除了进行线性分类之外，SVM还可以使用所谓的核技巧有效地进行非线性分类，将其输入隐式映射到高维特征空间中。

                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    当数据未被标记时，不能进行监督式学习，需要用非监督式学习，它会尝试找出数据到簇的自然聚类，并将新数据映射到这些已形成的簇。将支持向量机改进的聚类算法被称为支持向量聚类，当数据未被标记或者仅一些数据被标记时，支持向量聚类经常在工业应用中用作分类步骤的预处理。
                </p>
                <h5 style="font-size: 24px; font-weight: 800; color: #000000">算法核心公式</h5>
                <p style="font-size: 22px; font-weight: 600; color: #000000"> 拉格朗日对偶公式(降维减少计算量)
                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">
                    <img style="width: 920px; height: 280px" src="../images/machinelearning/SVM核心公式对偶.gif" alt="">
                </p>
                <p style="font-size: 22px; font-weight: 600; color: #000000">支持向量机核心算法公式 <br>
                    <img style="width: 920px; height: 280px" src="../images/machinelearning/SVM核心公式.gif" alt="">

                </p>
                <h5 style="font-size: 22px; font-weight: 600; color: #000000">最终结果</h5>
                <p style="font-size: 22px; font-weight: 600; color: #000000">acc = 0.857142857143
                </p>
            </div>
        </div>
    </div>
    <%@include file="../framework/footer.jsp" %>
</body>
</html>