# NOTE: Check https://developer.nvidia.com/nvidia-tensorrt-8x-download
#             https://developer.nvidia.com/nvidia-tensorrt-10x-download

# Version policy is to keep the latest minor release for each major release.
{
  tensorrt.releases = {
    # jetson
    linux-aarch64 = [ ];
    # powerpc
    linux-ppc64le = [ ];
    # server-grade arm
    linux-sbsa = [
      {
        version = "8.2.5.1";
        minCudaVersion = "11.4";
        maxCudaVersion = "11.4";
        cudnnVersion = "8.2";
        filename = "TensorRT-8.2.5.1.Ubuntu-20.04.aarch64-gnu.cuda-11.4.cudnn8.2.tar.gz";
        hash = "sha256-oWfQ3lq2aoMPv65THeotnMilTzP+QWqKeToLU8eO+qo=";
      }
      {
        version = "8.4.3.1";
        minCudaVersion = "11.6";
        maxCudaVersion = "11.6";
        cudnnVersion = "8.4";
        filename = "TensorRT-8.4.3.1.Ubuntu-20.04.aarch64-gnu.cuda-11.6.cudnn8.4.tar.gz";
        hash = "sha256-9tLlrB8cKYFvN2xF0Pol5CZs06iuuI5mq+6jpzD8wWI=";
      }
      {
        version = "8.5.3.1";
        minCudaVersion = "11.8";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.6";
        filename = "TensorRT-8.5.3.1.Ubuntu-20.04.aarch64-gnu.cuda-11.8.cudnn8.6.tar.gz";
        hash = "sha256-GW//mX0brvN/waHo9Wd07xerOEz3X/H/HAW2ZehYtTA=";
      }
      {
        version = "8.6.1.6";
        minCudaVersion = "12.0";
        maxCudaVersion = "12.0";
        cudnnVersion = null;
        filename = "TensorRT-8.6.1.6.Ubuntu-20.04.aarch64-gnu.cuda-12.0.tar.gz";
        hash = "sha256-Lc4+v/yBr17VlecCSFMLUDlXMTYV68MGExwnUjGme5E=";
      }
    ];
    # x86_64
    linux-x86_64 = [
      {
        version = "8.0.3.4";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.3";
        cudnnVersion = "8.2";
        filename = "TensorRT-8.0.3.4.Linux.x86_64-gnu.cuda-11.3.cudnn8.2.tar.gz";
        hash = "sha256-MXdDUCT/SqWm26jB7QarEcwOG/O7cS36Y6Q0IvQTE/M=";
      }
      {
        # The docs claim this supports through 11.5 despite the file name indicating 11.4.
        version = "8.2.5.1";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.5";
        cudnnVersion = "8.2";
        filename = "TensorRT-8.2.5.1.Linux.x86_64-gnu.cuda-11.4.cudnn8.2.tar.gz";
        hash = "sha256-LcNpYvDiT7AavqzK1MRlijo2qDN7jznigeS77US713E=";
      }
      {
        # The docs claim this supports through 11.7 despite the file name indicating 11.6.
        version = "8.4.3.1";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.7";
        cudnnVersion = "8.4";
        filename = "TensorRT-8.4.3.1.Linux.x86_64-gnu.cuda-11.6.cudnn8.4.tar.gz";
        hash = "sha256-jXwghcFjncxzh1BIwjWYqFJs4wiRNoduMdkCWOSeT2E=";
      }
      {
        version = "8.5.3.1";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.6";
        filename = "TensorRT-8.5.3.1.Linux.x86_64-gnu.cuda-11.8.cudnn8.6.tar.gz";
        hash = "sha256-BNeuOYvPTUAfGxI0DVsNrX6Z/FAB28+SE0ptuGu7YDY=";
      }
      {
        version = "8.6.1.6";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.9";
        filename = "TensorRT-8.6.1.6.Linux.x86_64-gnu.cuda-11.8.tar.gz";
        hash = "sha256-Fb/mBT1F/uxF7McSOpEGB2sLQ/oENfJC2J3KB3gzd1k=";
      }
      {
        version = "8.6.1.6";
        minCudaVersion = "12.0";
        maxCudaVersion = "12.1";
        cudnnVersion = "8.9";
        filename = "TensorRT-8.6.1.6.Linux.x86_64-gnu.cuda-12.0.tar.gz";
        hash = "sha256-D4FXpfxTKZQ7M4uJNZE3M1CvqQyoEjnNrddYDNHrolQ=";
      }
      {
        version = "10.3.0.26";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.9";
        filename = "TensorRT-10.3.0.26.Linux.x86_64-gnu.cuda-11.8.tar.gz";
        hash = "sha256-1O9TwlUP0eLqTozMs53EefmjriiaHjxb4A4GIuN9jvc=";
      }
      {
        version = "10.3.0.26";
        minCudaVersion = "12.0";
        maxCudaVersion = "12.5";
        cudnnVersion = "9.3";
        filename = "TensorRT-10.3.0.26.Linux.x86_64-gnu.cuda-12.5.tar.gz";
        hash = "sha256-rf8c1avl2HATgGFyNR5Y/QJOW/D8YdSe9LhM047ZkIE=";
      }
      {
        version = "10.8.0.43";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.9";
        filename = "TensorRT-10.8.0.43.Linux.x86_64-gnu.cuda-11.8.tar.gz";
        hash = "sha256-ZhdJ9ZUanOSQ3TbKNEIvS+fHLQ+TXZ+SdrUL4UiER+k=";
      }
      {
        version = "10.8.0.43";
        minCudaVersion = "12.0";
        maxCudaVersion = "12.8";
        cudnnVersion = "9.7";
        filename = "TensorRT-10.8.0.43.Linux.x86_64-gnu.cuda-12.8.tar.gz";
        hash = "sha256-V31tivU4FTQUuYZ8ZmtPZYUvwusefA6jogbl+vvH1J4=";
      }
      {
        version = "10.9.0.34";
        minCudaVersion = "11.0";
        maxCudaVersion = "11.8";
        cudnnVersion = "8.9";
        filename = "TensorRT-10.9.0.34.Linux.x86_64-gnu.cuda-11.8.tar.gz";
        hash = "sha256-nQtdgeOIxRA8RsL3ZvQHeBxA4dbJvyWEoFvmSxPaBLA=";
      }
      {
        version = "10.9.0.34";
        minCudaVersion = "12.0";
        maxCudaVersion = "12.8";
        cudnnVersion = "9.7";
        filename = "TensorRT-10.9.0.34.Linux.x86_64-gnu.cuda-12.8.tar.gz";
        hash = "sha256-M74OYeO/F3u7yrtIkr8BPwyKxx0r5z8oA4SKOCyxQnI=";
      }
    ];
  };
}
