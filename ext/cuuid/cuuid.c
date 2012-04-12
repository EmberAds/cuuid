#include <ruby.h>
#include <uuid/uuid.h>

// Define our module constant
VALUE CUUID = Qnil;

// Prototype this
void Init_cuuid();

// Prototype CUUID.generate
VALUE method_generate();

// Define CUUID and the fact it has a class method called uuid1
void Init_cuuid() {
  CUUID = rb_define_module("CUUID");
  int arg_count = 0;
  rb_define_module_function(CUUID, "generate", method_generate, arg_count);
}

// Implement CUUID.generate
VALUE method_generate(VALUE self) {
  uuid_t uuid_id;
  char uuid_str[128];

  uuid_generate(uuid_id);

  uuid_unparse(uuid_id, uuid_str);

  // Cast it into a ruby string and return it
  return rb_str_new2(uuid_str);
}
