.PHONY: backup-worlds
backup-worlds:
	mkdir -p backups
	zip "backups/World_$(shell date '+%Y-%m-%d_%H%M%S').wld.zip" "./data/Worlds/World.wld"

.PHONY: dump-logs
dump-logs:
	docker compose logs -t > logs/$(shell date '+%Y-%m-%d_%H-%M-%S').log
