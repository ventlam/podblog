# 使用官方的Python基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 将依赖信息复制到容器内
COPY requirements.txt .

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 将代码复制到容器内
COPY ./app /app

# 启动服务
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
