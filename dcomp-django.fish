function dcomp-django
    set r_args
    if test (count $argv) -gt 1;
        set r_args $argv[2..-1];
    end

    # path to where the docker-compose file resides
    cd <my path>;
    # execute django
    set_color green
    if docker-compose exec $argv[1] echo "Container running..."
        set_color normal
        docker-compose exec $argv[1] bin/django $r_args
	else
        docker-compose run --rm $argv[1] bin/django $r_args
    end
    set_color normal
end
