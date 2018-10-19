package main

import (
	"fmt"

	"github.com/Bo0km4n/go-protobuf-ref-sample/team/handler/grpc/team"
	"github.com/Bo0km4n/go-protobuf-ref-sample/user/handler/grpc/user"
)

func main() {
	u := &user.User{}
	t := &team.Team{}

	fmt.Println(u, t)
}
