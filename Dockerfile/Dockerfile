
FROM python:3.9-slim

# 1. Cài đặt các gói hệ thống cần thiết
# Thêm pkg-config và default-libmysqlclient-dev (tương thích tốt hơn)
RUN apt-get update && apt-get install -y \
    pkg-config \
    python3-tk \
    tk-dev \
    default-libmysqlclient-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 2. Copy và cài đặt thư viện Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 3. Copy toàn bộ code
COPY . .

# 4. Lệnh chạy mặc định
CMD ["python", "run_gui.py"]