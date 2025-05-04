help:
	@echo make init
	@echo make config
	@echo make run
	@echo make clean
	@echo make docker-run
	@echo make run-ui

init:
	@echo "uv venv"
	@echo "source .venv/bin/activate"
	@echo "uv pip install -r requirements.txt"

config:
	uv run config.py

run:
	uv run main.py

clean:
	rm -fr ./db

docker-run:
	docker run -p 8000:8000 \
           -v ./demo_db:/demo_db \
           -v ./data:/data \
           --rm kuzudb/explorer:latest
run-ui:
	open http://localhost:8000
