# Postman Requists
    - https://documenter.getpostman.com/view/1863088/RWgm521J#276eae08-6efe-4616-8fd5-a9af33d9837d

# Run

## Main
    - git clone git@github.com:MuhammadOrabi/assessment-task.git assessment-task
    - cd assessment-task
    - git submodule update --init
    - docker-compose up --build -d

## Patients databse config
    - docker-compose exec -u postgres pgsql createdb patients 
    - docker-compose exec -u postgres pgsql createdb patients_test 
    - docker-compose exec patients python manage.py db init
    - docker-compose exec patients python manage.py db migrate
    - docker-compose exec patients python manage.py db upgrade

# Testing

## Doctors
    docker-compose exec doctors npm test

## Patients
    docker-compose exec patients pytest --tb=short -p no:logging