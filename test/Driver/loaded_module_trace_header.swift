// RUN: env SWIFT_LOADED_MODULE_TRACE_PATH=%t %target-build-swift -module-name loaded_module_trace_header %s -o- -import-objc-header %S/Inputs/loaded_module_trace_header.h > /dev/null
// RUN: %FileCheck %s < %t

// Disabled for now
// REQUIRES: rdar://problem/31771633

// REQUIRES: objc_interop

// CHECK: {
// CHECK: "name":"loaded_module_trace_header"
// CHECK: "arch":"{{[^"]*}}"
// CHECK: "swiftmodules":[
// CHECK: "{{[^"]*}}/ObjectiveC.swiftmodule"
// CHECK: "{{[^"]*}}/Dispatch.swiftmodule"
// CHECK: "{{[^"]*}}/Darwin.swiftmodule"
// CHECK: "{{[^"]*}}/Foundation.swiftmodule"
// CHECK: "{{[^"]*}}/Swift.swiftmodule"
// CHECK: "{{[^"]*}}/IOKit.swiftmodule"
// CHECK: "{{[^"]*}}/SwiftOnoneSupport.swiftmodule"
// CHECK: ]
// CHECK: }
