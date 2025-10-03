--Trying Out Basic Compose Commands--


Create and start container
> docker compose up

Create and start container detach mode (background run)
> docker compose up -d
-d, --detach

Build images before starting containers (forces building/rebuilding of images)
> docker compose up -d --build


Stop and remove container
> docker compose down

Stop and remove container 
Remove named volumes declared in the "volumes" section of the Compose file and anonymous volumes attached to containers
> docker compose down -v


Stop containers (Not Remove)
> docker compose stop

Restart stopped ones without rebuild
> docker compose start