#import <UIKit/UIKit.h>

extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_7558E8D50FB94071B3EA6BDC1B2ADD1F(void *, void *);
void MREP_D3FEA96C22C64F5C8BC3E4BE4626BE22(void *, void *);
void MREP_25B75C937EAE4412BCE245AC4F6621B9(void *, void *);
void MREP_EA59EE904E8E438587B1558FA2C7A01B(void *, void *);
void MREP_A2CF906C718C42EBB307201CE3362138(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
	try {
	    void *self = rb_vm_top_self();
MREP_7558E8D50FB94071B3EA6BDC1B2ADD1F(self, 0);
MREP_D3FEA96C22C64F5C8BC3E4BE4626BE22(self, 0);
MREP_25B75C937EAE4412BCE245AC4F6621B9(self, 0);
MREP_EA59EE904E8E438587B1558FA2C7A01B(self, 0);
MREP_A2CF906C718C42EBB307201CE3362138(self, 0);
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
	initialized = true;
    }
}
