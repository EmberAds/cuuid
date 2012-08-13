#include <ruby.h>
#include <uuid/uuid.h>

// CUUID::Generator.generate

// Define our module & class constants
VALUE CUUID = Qnil;
VALUE CUUIDGenerator = Qnil;

void Init_cuuid_generator();
static VALUE method_cuuid_generator_generate(VALUE self);

// Define CUUID, CUUID::Generator and the class method
void Init_cuuid_generator() {
  CUUID = rb_define_module("CUUID");
  CUUIDGenerator = rb_define_module_under(CUUID, "Generator");
  rb_define_module_function(CUUIDGenerator, "generate", method_cuuid_generator_generate, 0);
}

// Implement CUUID.generate
static VALUE method_cuuid_generator_generate(VALUE self) {
  uuid_t uuid_id;
  char uuid_str[128];

  // Generate UUID and grab string version of it
  uuid_generate(uuid_id);
  uuid_unparse(uuid_id, uuid_str);

  // Cast it into a ruby string and return it
  return rb_str_new2(uuid_str);
}
