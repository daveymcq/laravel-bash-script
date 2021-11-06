#!/bin/bash

laravel() 
{
    argv=("$@")
    argc=("$#")
    args=""

    printf "#!/bin/bash\n" > .laravel.sh

    if [ ${argc} -gt 0 ]; then

        if [ ${argv[0]} = "generate" ]; then
            if [ ${argv[1]} = "cast" ]; then
                printf "php artisan make:cast ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "channel" ]; then
                printf "php artisan make:channel ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "command" ]; then
                printf "php artisan make:command ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "component" ]; then
                printf "php artisan make:compon``ent ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "controller" ]; then
                printf "php artisan make:controller ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "event" ]; then
                printf "php artisan make:evet ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "exception" ]; then
                printf "php artisan make:exception ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "factory" ]; then
                printf "php artisan make:factory ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "job" ]; then
                printf "php artisan make:job ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "listener" ]; then
                printf "php artisan make:listener ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "mail" ]; then
                printf "php artisan make:mail ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "middleware" ]; then
                printf "php artisan make:middleware ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "migration" ]; then
                printf "php artisan make:migration ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "model" ]; then
                printf "php artisan make:model ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "notification" ]; then
                printf "php artisan make:notification ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "observer" ]; then
                printf "php artisan make:observer ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "policy" ]; then
                printf "php artisan make:policy ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "provider" ]; then
                printf "php artisan make:provider ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "request" ]; then
                printf "php artisan make:request ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "resource" ]; then
                printf "php artisan make:resource ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "rule" ]; then
                printf "php artisan make:rule ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "seeder" ]; then
                printf "php artisan make:seeder ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

            if [ ${argv[1]} = "test" ]; then
                printf "php artisan make:test ${argv[2]} ${argv[3]} ${argv[4]}" >> .laravel.sh
            fi

        else
            arg=0
            printf "laravel" >> .laravel.sh
        
            while [ $arg -lt ${argc} ]; do
                args+=" ${argv[$arg]}"
                let arg+=1
            done

            printf "${args}" >> .laravel.sh
        fi
    elif [ ${argc} -eq 0 ]; then
        printf "laravel" >> .laravel.sh
    fi

    chmod +x .laravel.sh
    ./.laravel.sh
    rm -f .laravel.sh
}
