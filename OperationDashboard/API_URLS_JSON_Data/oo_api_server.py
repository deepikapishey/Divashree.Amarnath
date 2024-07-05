from flask import Flask,request,jsonify

import json


oo_app = Flask(__name__)

with open('C:\oo_api_server\oo_api_server\oo_rest\cp.json','r') as file:
    cp_content=json.load(file)

with open('C:\oo_api_server\oo_api_server\oo_rest\scheduler.json','r') as file1:
    scheduler_content=json.load(file1)

with open(r'''C:\\oo_api_server\\oo_api_server\\oo_rest\\users.json''','r') as file2:
    user_content=json.load(file2)


with open('C:\oo_api_server\oo_api_server\oo_rest\workers.json','r') as file3:
    worker_content=json.load(file3)

with open(r'''C:\\oo_api_server\\oo_api_server\\oo_rest\\roles.json''','r') as file4:
    role_content=json.load(file4)


@oo_app.route('/')
def hello_world():
    if request.method == 'GET':
        return "OO Dummy app is running",200
    return "PAGE NOT FOUND",404

@oo_app.route('/oo/rest/content-packs')
def send_oo_reponses():
    if request.method == 'GET':
        return cp_content,200
    return "PAGE NOT FOUND",404

'''@oo_app.route('/oo/rest/v2/content-packs')
def send_oo_reponses():
    if request.method == 'GET':
        return jsonify(cp_informartion),200
    return "PAGE NOT FOUND",404'''

@oo_app.route('/oo/rest/schedules')
def send_oo_reponses_1():
    if request.method == 'GET':
        return scheduler_content,200
    return "PAGE NOT FOUND",404

@oo_app.route('/oo/rest/users')
def send_oo_reponses_2():
    if request.method == 'GET':
        return user_content,200
    return "PAGE NOT FOUND",404

@oo_app.route('/oo/rest/workers')
def send_oo_reponses_3():
    if request.method == 'GET':
        return worker_content,200
    return "PAGE NOT FOUND",404

@oo_app.route('/oo/rest/roles')
def send_oo_reponses_4():
    if request.method == 'GET':
        return role_content,200
    return "PAGE NOT FOUND",404

if __name__ == '__main__':
    oo_app.run(port="8088",debug=True)