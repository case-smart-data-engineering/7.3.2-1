FROM python:3.8

# 安装额外的依赖或工具（如果需要）
RUN apt-get update && \
    apt-get install -y --no-install-recommends <additional-tools> && \
    rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /workspace

# 安装项目所需依赖
COPY requirements.txt /workspace/
RUN pip install --no-cache-dir -r requirements.txt

# 其他自定义配置
