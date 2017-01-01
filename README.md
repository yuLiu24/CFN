# Convolutional Fusion Networks

This is the code used in our paper "On the Exploration of Convolutional Fusion Networks for Visual Recognition" at  the 23rd International Conference on MultiMedia Modeling (MMM 2017).
If you would like to refer to this work, please cite the corresponding paper

    @inproceedings{Yu2017:CFN,
	author = {Yu Liu and Yanming Guo and Michael S. Lew},
	booktitle = {International Conference on MultiMedia Modeling (MMM)},
	title = {On the Exploration of Convolutional Fusion Networks for Visual Recognition},
	year = {2017}
    }

You can easily use this code or enjoy our demo server.

## Training CIFAR

- Data preprocessing: please follow the procedure in NIN and DSN.
- The training prototxt files are in ./examples/cifar/. The plain CNN has 7 convolutional layers and one fully-connected layer. The CFN counterpart adds two side branches and one fusion module based on a locally-connected layer.
- The models get 8.27% and 30.68% error rates on CIAFR-10 and CIFAR-100.

## Training ImageNet
- The training prototxt files are in ./examples/imagenet/. The plain CNN has 10 convolutional layers and one fully-connected layer. The CFN counterpart adds three side branches and one fusion module based on a locally-connected layer.
- The model gets 41.96% top-1 error rate and 19.09% top-5 error rate on ImageNet 2012 validation set.
- Batch Norm: "use_global_stats" is false at the training stage, but is true at the test stage.

## <b>Live Demo:</b> [http://goliath.liacs.nl/]

- http://goliath.liacs.nl/
- This demo runs the CFN-11 model trained on ImageNet. 
- Given one image, the system will recognize it and return its coarse categories (prob>1) and fine categories (prob<1).

## Acknowledgment: 
This code is based on Caffe. Thanks to the contributors of Caffe. 


    @article{jia2014caffe,
      Author = {Jia, Yangqing and Shelhamer, Evan and Donahue, Jeff and Karayev, Sergey and Long, Jonathan and Girshick, Ross and Guadarrama, Sergio and Darrell, Trevor},
      Journal = {arXiv preprint arXiv:1408.5093},
      Title = {Caffe: Convolutional Architecture for Fast Feature Embedding},
      Year = {2014}
    }


If you encounter any issue when using our code, please let me know. Thank you!




