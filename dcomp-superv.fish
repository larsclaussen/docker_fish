function dcomp-superv
    -- path to where the docker-compose file resides
	cd <my path>;
	docker-compose exec $argv[1] bin/supervisorctl $argv[2..-1]
end
