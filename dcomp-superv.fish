function dcomp-superv
    # path to where the docker-compose file resides
    cd <my path>;
    set_color green
    if docker-compose exec $argv[1] echo "Running..."
        set_color normal
        docker-compose exec $argv[1] bin/supervisorctl $argv[2..-1]
	else
        set_color red
        echo "Container is not running. You probably have to execute 'docker-compose up [args]' first"
    end
    set_color normal
end
