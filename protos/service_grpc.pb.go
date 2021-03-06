// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package protos

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// BebaBackendClient is the client API for BebaBackend service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type BebaBackendClient interface {
	TestHello(ctx context.Context, in *TestHelloRequest, opts ...grpc.CallOption) (*TestHelloResponse, error)
	GetDrivers(ctx context.Context, in *DriverRequest, opts ...grpc.CallOption) (BebaBackend_GetDriversClient, error)
	GetVehicles(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (BebaBackend_GetVehiclesClient, error)
	GetDriver(ctx context.Context, in *DriverRequest, opts ...grpc.CallOption) (*Driver, error)
	GetVehicle(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (*Vehicle, error)
	GetTrips(ctx context.Context, in *TripsRequest, opts ...grpc.CallOption) (BebaBackend_GetTripsClient, error)
	NewDriver(ctx context.Context, in *Driver, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	NewVehicle(ctx context.Context, in *Vehicle, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	NewTrip(ctx context.Context, in *Trip, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	CancelTrip(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	RemoveDriver(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	RemoveVehicle(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error)
	VehicleKilometresTravelled(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (BebaBackend_VehicleKilometresTravelledClient, error)
	SendMessage(ctx context.Context, in *TextMessage, opts ...grpc.CallOption) (*SendMessageResponse, error)
	DisburseFunds(ctx context.Context, in *DisburseFundsRequest, opts ...grpc.CallOption) (*DisburseFundsResponse, error)
}

type bebaBackendClient struct {
	cc grpc.ClientConnInterface
}

func NewBebaBackendClient(cc grpc.ClientConnInterface) BebaBackendClient {
	return &bebaBackendClient{cc}
}

func (c *bebaBackendClient) TestHello(ctx context.Context, in *TestHelloRequest, opts ...grpc.CallOption) (*TestHelloResponse, error) {
	out := new(TestHelloResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/TestHello", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) GetDrivers(ctx context.Context, in *DriverRequest, opts ...grpc.CallOption) (BebaBackend_GetDriversClient, error) {
	stream, err := c.cc.NewStream(ctx, &BebaBackend_ServiceDesc.Streams[0], "/beba_backend.BebaBackend/GetDrivers", opts...)
	if err != nil {
		return nil, err
	}
	x := &bebaBackendGetDriversClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type BebaBackend_GetDriversClient interface {
	Recv() (*Driver, error)
	grpc.ClientStream
}

type bebaBackendGetDriversClient struct {
	grpc.ClientStream
}

func (x *bebaBackendGetDriversClient) Recv() (*Driver, error) {
	m := new(Driver)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *bebaBackendClient) GetVehicles(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (BebaBackend_GetVehiclesClient, error) {
	stream, err := c.cc.NewStream(ctx, &BebaBackend_ServiceDesc.Streams[1], "/beba_backend.BebaBackend/GetVehicles", opts...)
	if err != nil {
		return nil, err
	}
	x := &bebaBackendGetVehiclesClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type BebaBackend_GetVehiclesClient interface {
	Recv() (*Vehicle, error)
	grpc.ClientStream
}

type bebaBackendGetVehiclesClient struct {
	grpc.ClientStream
}

func (x *bebaBackendGetVehiclesClient) Recv() (*Vehicle, error) {
	m := new(Vehicle)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *bebaBackendClient) GetDriver(ctx context.Context, in *DriverRequest, opts ...grpc.CallOption) (*Driver, error) {
	out := new(Driver)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/GetDriver", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) GetVehicle(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (*Vehicle, error) {
	out := new(Vehicle)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/GetVehicle", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) GetTrips(ctx context.Context, in *TripsRequest, opts ...grpc.CallOption) (BebaBackend_GetTripsClient, error) {
	stream, err := c.cc.NewStream(ctx, &BebaBackend_ServiceDesc.Streams[2], "/beba_backend.BebaBackend/GetTrips", opts...)
	if err != nil {
		return nil, err
	}
	x := &bebaBackendGetTripsClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type BebaBackend_GetTripsClient interface {
	Recv() (*Trip, error)
	grpc.ClientStream
}

type bebaBackendGetTripsClient struct {
	grpc.ClientStream
}

func (x *bebaBackendGetTripsClient) Recv() (*Trip, error) {
	m := new(Trip)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *bebaBackendClient) NewDriver(ctx context.Context, in *Driver, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/NewDriver", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) NewVehicle(ctx context.Context, in *Vehicle, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/NewVehicle", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) NewTrip(ctx context.Context, in *Trip, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/NewTrip", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) CancelTrip(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/CancelTrip", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) RemoveDriver(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/RemoveDriver", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) RemoveVehicle(ctx context.Context, in *RecordId, opts ...grpc.CallOption) (*WriteRecordResponse, error) {
	out := new(WriteRecordResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/RemoveVehicle", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) VehicleKilometresTravelled(ctx context.Context, in *VehicleRequest, opts ...grpc.CallOption) (BebaBackend_VehicleKilometresTravelledClient, error) {
	stream, err := c.cc.NewStream(ctx, &BebaBackend_ServiceDesc.Streams[3], "/beba_backend.BebaBackend/VehicleKilometresTravelled", opts...)
	if err != nil {
		return nil, err
	}
	x := &bebaBackendVehicleKilometresTravelledClient{stream}
	if err := x.ClientStream.SendMsg(in); err != nil {
		return nil, err
	}
	if err := x.ClientStream.CloseSend(); err != nil {
		return nil, err
	}
	return x, nil
}

type BebaBackend_VehicleKilometresTravelledClient interface {
	Recv() (*VehicleKilometresTravelledResponse, error)
	grpc.ClientStream
}

type bebaBackendVehicleKilometresTravelledClient struct {
	grpc.ClientStream
}

func (x *bebaBackendVehicleKilometresTravelledClient) Recv() (*VehicleKilometresTravelledResponse, error) {
	m := new(VehicleKilometresTravelledResponse)
	if err := x.ClientStream.RecvMsg(m); err != nil {
		return nil, err
	}
	return m, nil
}

func (c *bebaBackendClient) SendMessage(ctx context.Context, in *TextMessage, opts ...grpc.CallOption) (*SendMessageResponse, error) {
	out := new(SendMessageResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/SendMessage", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *bebaBackendClient) DisburseFunds(ctx context.Context, in *DisburseFundsRequest, opts ...grpc.CallOption) (*DisburseFundsResponse, error) {
	out := new(DisburseFundsResponse)
	err := c.cc.Invoke(ctx, "/beba_backend.BebaBackend/DisburseFunds", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// BebaBackendServer is the server API for BebaBackend service.
// All implementations must embed UnimplementedBebaBackendServer
// for forward compatibility
type BebaBackendServer interface {
	TestHello(context.Context, *TestHelloRequest) (*TestHelloResponse, error)
	GetDrivers(*DriverRequest, BebaBackend_GetDriversServer) error
	GetVehicles(*VehicleRequest, BebaBackend_GetVehiclesServer) error
	GetDriver(context.Context, *DriverRequest) (*Driver, error)
	GetVehicle(context.Context, *VehicleRequest) (*Vehicle, error)
	GetTrips(*TripsRequest, BebaBackend_GetTripsServer) error
	NewDriver(context.Context, *Driver) (*WriteRecordResponse, error)
	NewVehicle(context.Context, *Vehicle) (*WriteRecordResponse, error)
	NewTrip(context.Context, *Trip) (*WriteRecordResponse, error)
	CancelTrip(context.Context, *RecordId) (*WriteRecordResponse, error)
	RemoveDriver(context.Context, *RecordId) (*WriteRecordResponse, error)
	RemoveVehicle(context.Context, *RecordId) (*WriteRecordResponse, error)
	VehicleKilometresTravelled(*VehicleRequest, BebaBackend_VehicleKilometresTravelledServer) error
	SendMessage(context.Context, *TextMessage) (*SendMessageResponse, error)
	DisburseFunds(context.Context, *DisburseFundsRequest) (*DisburseFundsResponse, error)
	mustEmbedUnimplementedBebaBackendServer()
}

// UnimplementedBebaBackendServer must be embedded to have forward compatible implementations.
type UnimplementedBebaBackendServer struct {
}

func (UnimplementedBebaBackendServer) TestHello(context.Context, *TestHelloRequest) (*TestHelloResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method TestHello not implemented")
}
func (UnimplementedBebaBackendServer) GetDrivers(*DriverRequest, BebaBackend_GetDriversServer) error {
	return status.Errorf(codes.Unimplemented, "method GetDrivers not implemented")
}
func (UnimplementedBebaBackendServer) GetVehicles(*VehicleRequest, BebaBackend_GetVehiclesServer) error {
	return status.Errorf(codes.Unimplemented, "method GetVehicles not implemented")
}
func (UnimplementedBebaBackendServer) GetDriver(context.Context, *DriverRequest) (*Driver, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetDriver not implemented")
}
func (UnimplementedBebaBackendServer) GetVehicle(context.Context, *VehicleRequest) (*Vehicle, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetVehicle not implemented")
}
func (UnimplementedBebaBackendServer) GetTrips(*TripsRequest, BebaBackend_GetTripsServer) error {
	return status.Errorf(codes.Unimplemented, "method GetTrips not implemented")
}
func (UnimplementedBebaBackendServer) NewDriver(context.Context, *Driver) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NewDriver not implemented")
}
func (UnimplementedBebaBackendServer) NewVehicle(context.Context, *Vehicle) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NewVehicle not implemented")
}
func (UnimplementedBebaBackendServer) NewTrip(context.Context, *Trip) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method NewTrip not implemented")
}
func (UnimplementedBebaBackendServer) CancelTrip(context.Context, *RecordId) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CancelTrip not implemented")
}
func (UnimplementedBebaBackendServer) RemoveDriver(context.Context, *RecordId) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RemoveDriver not implemented")
}
func (UnimplementedBebaBackendServer) RemoveVehicle(context.Context, *RecordId) (*WriteRecordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method RemoveVehicle not implemented")
}
func (UnimplementedBebaBackendServer) VehicleKilometresTravelled(*VehicleRequest, BebaBackend_VehicleKilometresTravelledServer) error {
	return status.Errorf(codes.Unimplemented, "method VehicleKilometresTravelled not implemented")
}
func (UnimplementedBebaBackendServer) SendMessage(context.Context, *TextMessage) (*SendMessageResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SendMessage not implemented")
}
func (UnimplementedBebaBackendServer) DisburseFunds(context.Context, *DisburseFundsRequest) (*DisburseFundsResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DisburseFunds not implemented")
}
func (UnimplementedBebaBackendServer) mustEmbedUnimplementedBebaBackendServer() {}

// UnsafeBebaBackendServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to BebaBackendServer will
// result in compilation errors.
type UnsafeBebaBackendServer interface {
	mustEmbedUnimplementedBebaBackendServer()
}

func RegisterBebaBackendServer(s grpc.ServiceRegistrar, srv BebaBackendServer) {
	s.RegisterService(&BebaBackend_ServiceDesc, srv)
}

func _BebaBackend_TestHello_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(TestHelloRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).TestHello(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/TestHello",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).TestHello(ctx, req.(*TestHelloRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_GetDrivers_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(DriverRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(BebaBackendServer).GetDrivers(m, &bebaBackendGetDriversServer{stream})
}

type BebaBackend_GetDriversServer interface {
	Send(*Driver) error
	grpc.ServerStream
}

type bebaBackendGetDriversServer struct {
	grpc.ServerStream
}

func (x *bebaBackendGetDriversServer) Send(m *Driver) error {
	return x.ServerStream.SendMsg(m)
}

func _BebaBackend_GetVehicles_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(VehicleRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(BebaBackendServer).GetVehicles(m, &bebaBackendGetVehiclesServer{stream})
}

type BebaBackend_GetVehiclesServer interface {
	Send(*Vehicle) error
	grpc.ServerStream
}

type bebaBackendGetVehiclesServer struct {
	grpc.ServerStream
}

func (x *bebaBackendGetVehiclesServer) Send(m *Vehicle) error {
	return x.ServerStream.SendMsg(m)
}

func _BebaBackend_GetDriver_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DriverRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).GetDriver(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/GetDriver",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).GetDriver(ctx, req.(*DriverRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_GetVehicle_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(VehicleRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).GetVehicle(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/GetVehicle",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).GetVehicle(ctx, req.(*VehicleRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_GetTrips_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(TripsRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(BebaBackendServer).GetTrips(m, &bebaBackendGetTripsServer{stream})
}

type BebaBackend_GetTripsServer interface {
	Send(*Trip) error
	grpc.ServerStream
}

type bebaBackendGetTripsServer struct {
	grpc.ServerStream
}

func (x *bebaBackendGetTripsServer) Send(m *Trip) error {
	return x.ServerStream.SendMsg(m)
}

func _BebaBackend_NewDriver_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Driver)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).NewDriver(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/NewDriver",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).NewDriver(ctx, req.(*Driver))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_NewVehicle_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Vehicle)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).NewVehicle(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/NewVehicle",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).NewVehicle(ctx, req.(*Vehicle))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_NewTrip_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(Trip)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).NewTrip(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/NewTrip",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).NewTrip(ctx, req.(*Trip))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_CancelTrip_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RecordId)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).CancelTrip(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/CancelTrip",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).CancelTrip(ctx, req.(*RecordId))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_RemoveDriver_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RecordId)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).RemoveDriver(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/RemoveDriver",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).RemoveDriver(ctx, req.(*RecordId))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_RemoveVehicle_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(RecordId)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).RemoveVehicle(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/RemoveVehicle",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).RemoveVehicle(ctx, req.(*RecordId))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_VehicleKilometresTravelled_Handler(srv interface{}, stream grpc.ServerStream) error {
	m := new(VehicleRequest)
	if err := stream.RecvMsg(m); err != nil {
		return err
	}
	return srv.(BebaBackendServer).VehicleKilometresTravelled(m, &bebaBackendVehicleKilometresTravelledServer{stream})
}

type BebaBackend_VehicleKilometresTravelledServer interface {
	Send(*VehicleKilometresTravelledResponse) error
	grpc.ServerStream
}

type bebaBackendVehicleKilometresTravelledServer struct {
	grpc.ServerStream
}

func (x *bebaBackendVehicleKilometresTravelledServer) Send(m *VehicleKilometresTravelledResponse) error {
	return x.ServerStream.SendMsg(m)
}

func _BebaBackend_SendMessage_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(TextMessage)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).SendMessage(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/SendMessage",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).SendMessage(ctx, req.(*TextMessage))
	}
	return interceptor(ctx, in, info, handler)
}

func _BebaBackend_DisburseFunds_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DisburseFundsRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(BebaBackendServer).DisburseFunds(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/beba_backend.BebaBackend/DisburseFunds",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(BebaBackendServer).DisburseFunds(ctx, req.(*DisburseFundsRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// BebaBackend_ServiceDesc is the grpc.ServiceDesc for BebaBackend service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var BebaBackend_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "beba_backend.BebaBackend",
	HandlerType: (*BebaBackendServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "TestHello",
			Handler:    _BebaBackend_TestHello_Handler,
		},
		{
			MethodName: "GetDriver",
			Handler:    _BebaBackend_GetDriver_Handler,
		},
		{
			MethodName: "GetVehicle",
			Handler:    _BebaBackend_GetVehicle_Handler,
		},
		{
			MethodName: "NewDriver",
			Handler:    _BebaBackend_NewDriver_Handler,
		},
		{
			MethodName: "NewVehicle",
			Handler:    _BebaBackend_NewVehicle_Handler,
		},
		{
			MethodName: "NewTrip",
			Handler:    _BebaBackend_NewTrip_Handler,
		},
		{
			MethodName: "CancelTrip",
			Handler:    _BebaBackend_CancelTrip_Handler,
		},
		{
			MethodName: "RemoveDriver",
			Handler:    _BebaBackend_RemoveDriver_Handler,
		},
		{
			MethodName: "RemoveVehicle",
			Handler:    _BebaBackend_RemoveVehicle_Handler,
		},
		{
			MethodName: "SendMessage",
			Handler:    _BebaBackend_SendMessage_Handler,
		},
		{
			MethodName: "DisburseFunds",
			Handler:    _BebaBackend_DisburseFunds_Handler,
		},
	},
	Streams: []grpc.StreamDesc{
		{
			StreamName:    "GetDrivers",
			Handler:       _BebaBackend_GetDrivers_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "GetVehicles",
			Handler:       _BebaBackend_GetVehicles_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "GetTrips",
			Handler:       _BebaBackend_GetTrips_Handler,
			ServerStreams: true,
		},
		{
			StreamName:    "VehicleKilometresTravelled",
			Handler:       _BebaBackend_VehicleKilometresTravelled_Handler,
			ServerStreams: true,
		},
	},
	Metadata: "protos/service.proto",
}
