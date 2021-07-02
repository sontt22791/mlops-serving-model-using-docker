https://learning.oreilly.com/library/view/practical-mlops/9781098103002/ch03.html#idm45788153861912

step:
1- create Dockerfile
2- create or copy requirements.txt
3- create webapp folder (gồm có app.py và file joblib)
4- tạo images: ```docker build --build-arg VERSION=AutoML_287f444c -t flask-predict .```
5- check images (optional): ```docker images flask-predict```
6- run docker: ```docker run -p 5000:5000 -d --name flask-predict flask-predict```
(có thể sử dụng ```curl 192.168.0.200:5000``` để check xem service đã run chưa)
7- có thể chạy file client.py để test xem api có hoạt động ko