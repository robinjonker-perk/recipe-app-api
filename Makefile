lint: 
	docker compose run --rm app sh -c "flake8"

test: 
	docker compose run --rm app sh -c "python manage.py wait_for_db && python manage.py test"

wait:
	docker compose run --rm app sh -c "python manage.py wait_for_db"

run:
	docker compose up