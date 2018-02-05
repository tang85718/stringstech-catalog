#!/usr/bin/env bash

echo "构建 images 本地镜像..."
# 构建 images 镜像并上传到 images hub
export VERSION=1.0
docker build --force-rm -t nginx-confd:${VERSION} .
docker tag nginx-confd:${VERSION} 10.0.1.200:5000/nginx-confd:${VERSION}
docker push 10.0.1.200:5000/nginx-confd:${VERSION}

docker tag nginx-confd:${VERSION} 10.0.1.200:5000/nginx-confd:latest
docker push 10.0.1.200:5000/nginx-confd:latest

echo "构建完成"