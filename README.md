### FotoPie Project

### Installation

`npm install`

### Running

This example requires docker or a local mongodb installation.  If using a local mongodb, see `app.module.ts` for connection options, and make sure there are matching options for the mongodb installation and the source code.

#### Docker

There is a `docker-compose.yml` file for starting Docker.

`docker-compose up`

After running the sample, you can stop the Docker container with

`docker-compose down`

### Run the sample

Then, run Nest as usual:

`npm run start`


# Git branch versions

## DO-03-BED-Charles-old
Not in use any more. Only reason to keep is to see the solution to resolve "next build" can not find issue - install the seperate nextjs package which should not be installed if the env is set to production.

## BED-Charles
Current working branch.

### Commit 472df4865c2db9983451a06aacb21e1e3ff94dfb "Experimental - Try remove all env in code" is working <b>great</b>.
It remove all the unnecessary env var passing into Dockerfile during building and the Github Action .yaml file.
The only place it introduce env var is when creating a real ECE service - with 4 block env from AWS SecretsManager and all others from .env file.

Following commits will try to switch back to GitHub action secrets and build those 4 block env during docker build stage.
The only reason for that is Github action secret is free.
