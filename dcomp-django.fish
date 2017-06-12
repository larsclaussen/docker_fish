function dcomp-django
    -- path to where the docker-compose file resides
	cd <my path>;
	-- execute django
	docker-compose exec $argv[1] bin/django $argv[2..-1]
end
