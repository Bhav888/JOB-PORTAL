from flask import Flask, render_template, request, redirect, url_for,json
from flask_mysqldb import MySQL
from werkzeug.security import generate_password_hash, check_password_hash
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS


app = Flask(__name__)
CORS(app)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Password.123'
app.config['MYSQL_DB'] = 'mysql'  

mysql = MySQL(app)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:Password.123@localhost/mysql'  # Replace with your MySQL URI
db = SQLAlchemy(app)

@app.route('/')
def index():
    return render_template('index.html') 



app.template_folder = 'opportunity'


@app.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        data = request.data
        json_data = json.loads(data)

        email = json_data['email']
        password = json_data['password']
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM users WHERE email = %s", (email,))
        user = cur.fetchone()
        cur.execute("SELECT * FROM studentdetail WHERE Email_id = %s", (email,))
        student =  cur.fetchone()
        cur.close()
        if user and check_password_hash(user[2], password):
            if student:
             return {'message':'success', 'studentDataFilled':'true'}
            else:
             return {'message':'success', 'studentDataFilled':'false'}
        else:
            return {'message' : 'ERROR:Invalid email or password'}

@app.route('/register', methods=['POST'])
def register():
    if request.method == 'POST':
        data = request.data
        json_data = json.loads(data)
        username = json_data['username']
        email = json_data['email']
        password = json_data['password']
        password_hash = generate_password_hash(password)
        cur = mysql.connection.cursor()
        cur.execute("INSERT INTO users (username, email, password_hash) VALUES (%s, %s, %s)", (username, email, password_hash))
        mysql.connection.commit()
        cur.close()
        return {'message':'success'}

# Route to handle form submission
@app.route('/submit_form', methods=['POST'])
def submit_form():
    if request.method == 'POST':
        try:
            # Connect to MySQL database
            cursor = mysql.connection.cursor()
            data = request.data
            form_data = json.loads(data)
            
        #       "first_name":first_name,
        # "last_name":last_name,
        # "birthay_day":birthay_day,
        # "birthday_month":birthday_month,
        # "birthday_year":birthday_year,
        # "email":email,
        # "mobile_number":mobile_number,
        # "gender":gender,
        # "address":address
            
            
            # Prepare data for insertion into the studentdetail table
            dob = '-'.join([form_data['birthday_year'], form_data['birthday_month'], form_data['birthay_day']])
            query = "INSERT INTO studentdetail (First_name, Last_name, DOB, Email_id, Mobile_No, Gender, Address) VALUES (%s, %s, %s, %s, %s, %s, %s)"
            cursor.execute(query, (
                form_data['first_name'],
                form_data['last_name'],
                dob,
                form_data['email'],
                form_data['mobile_number'],
                form_data['gender'],
                form_data['address']
            ))

            # Commit the transaction
            mysql.connection.commit()
            cursor.close()

            return 'Form submitted successfully'
        finally:
            cursor.close()
            
class Company(db.Model):
    __tablename__ = 'company'  # Corrected the attribute name
    
    company_Name = db.Column(db.String(100), primary_key=True)
    location = db.Column(db.String(100))
    company_type = db.Column(db.String(50))
    skill = db.Column(db.String(200))
    salary = db.Column(db.Integer)
    cgpa = db.Column(db.Integer)
    
def company_serializer(obj):
    if isinstance(obj, Company):
        return {'name': obj.company_Name, 'location': obj.location , 'company_type':obj.company_type,'skill':str(obj.skill) , 'salary':str(obj.salary) ,'cgpa': str(obj.cgpa)   }
    raise TypeError(f'Object of type {obj.__class__.__name__} is not JSON serializable')
    
def get_filtered_companies(filters):
    query = Company.query

    if 'cgpa' in filters:
        query = query.filter(Company.cgpa <= filters['cgpa'])
    if 'location' in filters:
        query = query.filter(Company.location.contains(filters['location']))
    if 'salary' in filters:
        query = query.filter(Company.salary >= filters['salary'])
    if 'company-type' in filters:
        query = query.filter(Company.company_type.contains(filters['company-type']))
    if 'skill' in filters:
        for skill in filters['skill']:
            query = query.filter(Company.skill.contains(skill))

    filtered_companies = query.all()
    serialized_company = json.dumps(filtered_companies, default=company_serializer)
    return serialized_company

@app.route('/filtered-companies', methods=['GET', 'POST'])
def filter():
    if request.method == 'POST':
        data = request.data
        json_data = json.loads(data)
        filters = {
            'cgpa': json_data['cgpa'],
            'location': json_data['location'],
            'salary': json_data['salary'],
            'company-type': json_data['company-type'],
            'skill': json_data['skill']
        }
        companies = get_filtered_companies(filters)
        return companies
    else:
        return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)


