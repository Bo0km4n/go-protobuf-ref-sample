PROTO_TARGETS = user team
PROJECT_PATH = github.com/Bo0km4n/go-protobuf-ref-sample
clean:
	-for t in $(PROTO_TARGETS); do \
	    rm $$t/handler/grpc/$$t/$$t.pb; \
	done	
proto: 
	@echo $(PROTO_TARGETS); \
   	cd $$GOPATH/src; \
	pwd; \
	for t in $(PROTO_TARGETS); do \
		echo "protobuf build ... $$t"; \
	    protoc --go_out=plugins=grpc:. $(PROJECT_PATH)/$$t/handler/grpc/$$t/$$t.proto; \
	done

proto_ref:
	@echo $(PROTO_TARGETS); \
	pwd; \
	for t in $(PROTO_TARGETS); do \
		echo "protobuf build ... $$t"; \
	    protoc --go_out=plugins=grpc:. $$t/handler/grpc/$$t/$$t.proto; \
	done