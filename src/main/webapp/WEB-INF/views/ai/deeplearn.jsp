<%--
  Created by IntelliJ IDEA.
  User: cn
  Date: 2018/1/24
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../framework/header.jsp" %>
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/highlight.js/8.0/highlight.min.js"></script>
    <script>
        hljs.initHighlightingOnLoad();
    </script>
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@include file="../framework/leftSide.jsp" %>

        <!-- page content -->
        <div class="right_col" style="background-color: #ffffff;">
            <div class="container body">
                <div marginheight="0">
                    <h1 style="font-size: 26px; font-weight: 900; color: #000000">基于深度学习的卫星图像识别</h1>
                    <h3 style="font-size: 24px; font-weight: 800; color: #000000">算法目的</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        对目标图像进行判定，判定为飞机或军舰，在数据量足够支撑的情况下可以对飞机和军舰判断其型号和国别。

                    </p>
                    <h3 style="font-size: 24px; font-weight: 800; color: #000000">运行时间</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">三分钟至五分钟

                    </p>
                    <h3 style="font-size: 22px; font-weight: 600; color: #000000">算法介绍</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">深度学习（deep
                        learning）是机器学习的分支，是一种试图使用包含复杂结构或由多重非线性变换构成的多个处理层对数据进行高层抽象的算法。

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        深度学习是机器学习中一种基于对数据进行表征学习的算法。观测值（例如一幅图像）可以使用多种方式来表示，如每个像素强度值的向量，或者更抽象地表示成一系列边、特定形状的区域等。而使用某些特定的表示方法更容易从实例中学习任务（例如，人脸识别或面部表情识别）。深度学习的好处是用非监督式或半监督式的特征学习和分层特征提取高效算法来替代手工获取特征。

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        表征学习的目标是寻求更好的表示方法并创建更好的模型来从大规模未标记数据中学习这些表示方法。表示方法来自神经科学，并松散地创建在类似神经系统中的信息处理和对通信模式的理解上，如神经编码，试图定义拉动神经元的反应之间的关系以及大脑中的神经元的电活动之间的关系。

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        至今已有数种深度学习框架，如深度神经网络、卷积神经网络和深度置信网络和递归神经网络已被应用在计算机视觉、语音识别、自然语言处理、音频识别与生物信息学等领域并获取了极好的效果。

                    </p>
                    <h3 style="font-size: 24px; font-weight: 800; color: #000000">核心公式</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">惩罚公式
                        <img style="width: 1480px; height: 380px" src="../images/machinelearning/softmax函数.jpg" alt="">

                    </p>
                    <h3 style="font-size: 22px; font-weight: 600; color: #000000">数据清洗整理</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        首先，检查图像，通过脚本检测，图像大小不一一致，有（50，50）和（128，128）两种图形
                        进行数据整理如下
                    </p>
                    <pre><code class="lang-python">for path in plane_path_train:
    files = os.listdir(path)
    for file in files:
        if '.jpg' not in file:
            continue
        im = Image.open(path+file)
        im = im.convert('L')
        im = im.resize((36,36))
        im.save('./traindata/plane/'+file)</code></pre>
                    <h3 style="font-size: 24px; font-weight: 800; color: #000000">归一化</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">由于时间问题，并未对照片进行常用卷积核预处理直接进行归一化
                        代码如下
                    </p>
                    <pre><code class="lang-python">files = os.listdir(path)
for file in files:
    if '.jpg' not in file:
        continue
    im = Image.open(path+file)
    im = np.asarray(im)
    im = im / 255
    a.append(im)
a = np.array(a)
print a.shape
np.save('test_ship.npy',a)</code></pre>
                    <h3 style="font-size: 24px; font-weight: 800; color: #000000">网络构建</h3>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">网络输入为 (batch,36,36,1) 的数据
                        网络输出为 二分类
                    </p>
                    <pre><code class="lang-python">x = tf.placeholder('float32',[None,36,36,1])
y = tf.placeholder('float32',[None,2])</code></pre>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">网络类型为 类Latex网络 即CNN ＋ FNN 具体结构如下，

                    </p>
                    <pre><code class="lang-python">conv_1 = tf.nn.relu(net_Instr.conv2D(x,W_conv_1)+B_conv_1)
pool_1 = net_Instr.maxPooling(conv_1)

conv_2 = tf.nn.relu(net_Instr.conv2D(pool_1,W_conv_2)+B_conv_2)
pool_2 = net_Instr.maxPooling(conv_2)

conv_3 = tf.nn.relu(net_Instr.conv2D(pool_2,W_conv_3)+B_conv_3)
pool_3 = net_Instr.maxPooling(conv_3)

conv_4 = tf.nn.relu(net_Instr.conv2D(pool_3,W_conv_4)+B_conv_4)
pool_4 = net_Instr.maxPooling(conv_4)

conv_5 = tf.nn.relu(net_Instr.conv2D(pool_4,W_conv_5)+B_conv_5)
pool_5 = net_Instr.maxPooling(conv_5)

conv_6 = tf.nn.relu(net_Instr.conv2D(pool_5,W_conv_6)+B_conv_6)
pool_6 = net_Instr.maxPooling(conv_6)

conv_7 = tf.nn.relu(net_Instr.conv2D(pool_6,W_conv_7)+B_conv_7)
pool_7 = net_Instr.maxPooling(conv_7)

conv_8 = tf.nn.relu(net_Instr.conv2D(pool_7,W_conv_8)+B_conv_8)


shape = conv_8.get_shape().as_list()
flatten = tf.reshape(conv_8,[-1,shape[1]*shape[2]*shape[3]])

W_dense_1 = net_Instr.weight_variable(shape=[shape[1]*shape[2]*shape[3],128],
                                      name='W_dense_1'
                                      )
B_dense_1 = net_Instr.bias_variable(shape=[128],name='B_dense_1')
#FNN
dense_1 = tf.nn.relu(tf.matmul(flatten,W_dense_1)+B_dense_1)
dense_1 = tf.nn.dropout(dense_1,keep_prob)
dense_2 = tf.nn.relu(tf.matmul(dense_1,W_dense_2)+B_dense_2)
dense_2 = tf.nn.dropout(dense_2,keep_prob)
dense_3 = tf.nn.relu(tf.matmul(dense_2,W_dense_3)+B_dense_3)
dense_3 = tf.nn.dropout(dense_3,keep_prob)
y_ = tf.matmul(dense_3,W_softmax)+B_softmax</code></pre>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">惩罚函数使用交叉商函数
                        最后一层使用softmax进行分类测试，如遇到情况为飞机与军舰同时出现则使用sigmoid函数作为最后的结果输出，此处需要注意，梯度下降使用Adam动量优化器，具体代码如下

                    </p>
                    <pre><code class="lang-python">cross_entropy = tf.nn.softmax_cross_entropy_with_logits(labels=y,logits=y_)
train_step = tf.train.AdamOptimizer(
                                    learning_rate=0.001,
                                    beta1=0.9,
                                    beta2=0.999,
                                    epsilon=1e-8
                                    ).minimize(cross_entropy)
predict = tf.argmax(tf.nn.softmax(y_),1)
correct_prediction = tf.equal(predict,tf.argmax(y,1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction,'float'))
loss = tf.reduce_mean(cross_entropy)</code></pre>
                    <h4 style="font-size: 24px; font-weight: 800; color: #000000">训练结果</h4>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">正确率出现阶跃的现象还未查明原因

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">正确率图像如下

                    </p>
                    <p><img style="width: 1000px; height: 450px" src="../images/machinelearning/Patent_Acc.png" alt="">

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">损失值图像如下

                    </p>
                    <p><img style="width: 1000px; height:450px" src="../images/machinelearning/Patent_Loss.png" alt="">

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">
                        可发现训练次数在500左右拟合效果较好，之后有过拟合的情况出现，正确率取值在500epoch左右
                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">loss = 0.002~0.003

                    </p>
                    <p style="font-size: 22px; font-weight: 600; color: #000000">acc = 0.92~0.94

                    </p>
                    <h3 style="font-size: 22px; font-weight: 600; color: #000000">网络优化方向</h3>
                    <ul style="font-size: 22px; font-weight: 600; color: #000000">
                        <li>使用DCGAN对抗网络生成高质量的噪音作为样本的负样本进行学习，目前样本缺少负样本支撑无法进行多分问题，即图像中同时存在军舰与飞机的情况或者两者同时不存在的情况网络目前无法识别
                        </li>
                        <li>使用高斯核提取边界 对图像进行sharpen处理 和锐化处理 等图像预处理手段可以提高一定程度的准确率</li>
                        <li>对图像进行旋转平移等操作 增加训练集样本数量</li>
                        <li>不建议使用复杂网络，本身问题属于简单问题，深层网络极容易出现过拟合的情况</li>
                        <li>batchnormalization的层使用需要慎重，容易造成波动剧烈</li>
                        <li>问题存在局部最优解的情况，不能使用传统随机梯度下降处理，有可能会困于局部优解</li>
                    </ul>
                    <%--<p style=" text-align:center;font-size: 22px; font-weight: 600; color: #000000">@written by SUST2A311</p>--%>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../framework/footer.jsp" %>
</body>
</html>



