// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.25.0
// 	protoc        v3.6.1
// source: protos/service.proto

package protos

import (
	proto "github.com/golang/protobuf/proto"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// This is a compile-time assertion that a sufficiently up-to-date version
// of the legacy proto package is being used.
const _ = proto.ProtoPackageIsVersion4

type TestHelloRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Name string `protobuf:"bytes,1,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *TestHelloRequest) Reset() {
	*x = TestHelloRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_service_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TestHelloRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TestHelloRequest) ProtoMessage() {}

func (x *TestHelloRequest) ProtoReflect() protoreflect.Message {
	mi := &file_protos_service_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TestHelloRequest.ProtoReflect.Descriptor instead.
func (*TestHelloRequest) Descriptor() ([]byte, []int) {
	return file_protos_service_proto_rawDescGZIP(), []int{0}
}

func (x *TestHelloRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type TestHelloResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Response string `protobuf:"bytes,1,opt,name=response,proto3" json:"response,omitempty"`
}

func (x *TestHelloResponse) Reset() {
	*x = TestHelloResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_service_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TestHelloResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TestHelloResponse) ProtoMessage() {}

func (x *TestHelloResponse) ProtoReflect() protoreflect.Message {
	mi := &file_protos_service_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TestHelloResponse.ProtoReflect.Descriptor instead.
func (*TestHelloResponse) Descriptor() ([]byte, []int) {
	return file_protos_service_proto_rawDescGZIP(), []int{1}
}

func (x *TestHelloResponse) GetResponse() string {
	if x != nil {
		return x.Response
	}
	return ""
}

type EmptyMessage struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *EmptyMessage) Reset() {
	*x = EmptyMessage{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_service_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *EmptyMessage) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*EmptyMessage) ProtoMessage() {}

func (x *EmptyMessage) ProtoReflect() protoreflect.Message {
	mi := &file_protos_service_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use EmptyMessage.ProtoReflect.Descriptor instead.
func (*EmptyMessage) Descriptor() ([]byte, []int) {
	return file_protos_service_proto_rawDescGZIP(), []int{2}
}

var File_protos_service_proto protoreflect.FileDescriptor

var file_protos_service_proto_rawDesc = []byte{
	0x0a, 0x14, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x73, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x08, 0x74, 0x69, 0x6e, 0x79, 0x5f, 0x65, 0x72, 0x70,
	0x22, 0x26, 0x0a, 0x10, 0x54, 0x65, 0x73, 0x74, 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x2f, 0x0a, 0x11, 0x54, 0x65, 0x73, 0x74,
	0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x1a, 0x0a,
	0x08, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x08, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x0e, 0x0a, 0x0c, 0x45, 0x6d, 0x70,
	0x74, 0x79, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x32, 0x53, 0x0a, 0x0b, 0x54, 0x69, 0x6e,
	0x79, 0x45, 0x72, 0x70, 0x47, 0x72, 0x70, 0x63, 0x12, 0x44, 0x0a, 0x09, 0x54, 0x65, 0x73, 0x74,
	0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x12, 0x1a, 0x2e, 0x74, 0x69, 0x6e, 0x79, 0x5f, 0x65, 0x72, 0x70,
	0x2e, 0x54, 0x65, 0x73, 0x74, 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x1b, 0x2e, 0x74, 0x69, 0x6e, 0x79, 0x5f, 0x65, 0x72, 0x70, 0x2e, 0x54, 0x65, 0x73,
	0x74, 0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x42, 0x2b,
	0x5a, 0x29, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6e, 0x64, 0x69,
	0x72, 0x61, 0x6e, 0x67, 0x75, 0x67, 0x2f, 0x74, 0x69, 0x6e, 0x79, 0x2d, 0x65, 0x72, 0x70, 0x2d,
	0x67, 0x72, 0x70, 0x63, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x33,
}

var (
	file_protos_service_proto_rawDescOnce sync.Once
	file_protos_service_proto_rawDescData = file_protos_service_proto_rawDesc
)

func file_protos_service_proto_rawDescGZIP() []byte {
	file_protos_service_proto_rawDescOnce.Do(func() {
		file_protos_service_proto_rawDescData = protoimpl.X.CompressGZIP(file_protos_service_proto_rawDescData)
	})
	return file_protos_service_proto_rawDescData
}

var file_protos_service_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_protos_service_proto_goTypes = []interface{}{
	(*TestHelloRequest)(nil),  // 0: tiny_erp.TestHelloRequest
	(*TestHelloResponse)(nil), // 1: tiny_erp.TestHelloResponse
	(*EmptyMessage)(nil),      // 2: tiny_erp.EmptyMessage
}
var file_protos_service_proto_depIdxs = []int32{
	0, // 0: tiny_erp.TinyErpGrpc.TestHello:input_type -> tiny_erp.TestHelloRequest
	1, // 1: tiny_erp.TinyErpGrpc.TestHello:output_type -> tiny_erp.TestHelloResponse
	1, // [1:2] is the sub-list for method output_type
	0, // [0:1] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_protos_service_proto_init() }
func file_protos_service_proto_init() {
	if File_protos_service_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_protos_service_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*TestHelloRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protos_service_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*TestHelloResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protos_service_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*EmptyMessage); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_protos_service_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_protos_service_proto_goTypes,
		DependencyIndexes: file_protos_service_proto_depIdxs,
		MessageInfos:      file_protos_service_proto_msgTypes,
	}.Build()
	File_protos_service_proto = out.File
	file_protos_service_proto_rawDesc = nil
	file_protos_service_proto_goTypes = nil
	file_protos_service_proto_depIdxs = nil
}
