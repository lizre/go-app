Use Go to learn CI/CD.

# CI: Build and test with every commit 

Other CI practices include Codeowners and required review on PRs; Styling; Committing at least daily    .

## Building

[Compiled languages](https://www.freecodecamp.org/news/compiled-versus-interpreted-languages/) need to be `built`: compiled into a `binary executable` file.
- Go is a compiled language. So to run go.main, you would normally need to build the project and run the binary:
`go build main.go`
- This makes a `binary executable` called `main`.

This can be annoying to do manually if you do it on a regular schedule, or have dependencies, or need to make binary executables for multiple OSs. So instead, use a  `build tool` to automate building and running. 

### Build with Make
a Makefile is a simple build tool.
- See `Makefile`
- try running `make build`, `make compile`, `make run`, `make clean`

### Build with Actions

# **TODO**



## Testing 
https://dev.to/gopher/build-ci-cd-pipelines-in-go-with-github-actions-and-dockers-1ko7

### Manually
- See `failing_test.go`
- Run `go mod init failing_test`; `go test`
    - it should fail.

### With GitHub Actions 
`.github/workflows/build_test.yml`.


# **TODO: CI stack includes "package managers"**

### Note
- Also see [code coverage](https://github.com/marketplace/codecov)
- Also see lint.yaml ([source](https://tutorialedge.net/golang/github-actions-for-go-projects/))
- Then frequently merge in ("integrate").


# CD

# **TODO**

After CI,
Continuous delivery (CD) automatically delivers code changes to production-ready environments for approval; or
Continuous deployment (CD) automatically deploys code changes to customers directly.

to digitalocean https://www.digitalocean.com/community/tech_talks/deploying-to-digitalocean-with-github-actions


why need docker
https://semaphoreci.com/community/tutorials/how-to-deploy-a-go-web-application-with-docker


deploying to digitalocean requires docker img
https://faun.pub/full-ci-cd-with-docker-github-actions-digitalocean-droplets-container-registry-db2938db8246 (full workflow to deploy to digitalocean)
https://docs.servicestack.net/do-github-action-mix-deployment#digital-ocean-droplets-host
https://codememoirs.com/automatic-deployment-digitalocean-github-actions#setting-up-your-droplet

release workflow: https://brunopaz.dev/blog/building-a-basic-ci-cd-pipeline-for-a-golang-application-using-github-actions/

deploy to netlify https://blog.logrocket.com/github-actions-how-to-autodeploy-your-app/#Deploying-To-Netlify-With-GitHub-Actions

deploy to kubernetes https://itnext.io/ci-cd-for-a-multi-arch-go-application-using-github-actions-docker-buildx-helm-and-kubernetes-f415a42b2c82

Deploy to docker hub
https://dev.to/gopher/build-ci-cd-pipelines-in-go-with-github-actions-and-dockers-1ko7
https://medium.com/swlh/setting-up-github-actions-for-go-project-ea84f4ed3a40
https://tutorialedge.net/golang/github-actions-for-go-projects/