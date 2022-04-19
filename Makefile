BINARY_NAME=main.out
 
build:
	go build -o bin/main main.go

compile:
	echo "Compiling for every OS and Platform"
	GOOS=freebsd GOARCH=386 go build -o bin/main-freebsd-386 main.go
	GOOS=linux GOARCH=386 go build -o bin/main-linux-386 main.go
	GOOS=windows GOARCH=386 go build -o bin/main-windows-386 main.go

run:
	go build -o ${BINARY_NAME} main.go
	./${BINARY_NAME}
 
build_and_run: build run

clean:
	go clean
	rm bin/main
	rm bin/main-windows-386
	rm bin/main-freebsd-386
	rm bin/main-linux-386
