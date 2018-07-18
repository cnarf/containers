.PHONY:: all clean
all::
clean::


%.iid: */%.dockerfile
	{ NAME="${basename $@}"; docker build --rm --pull -t cnarf/$${NAME} --iidfile $@	-f $< $${NAME}; }


-include buster/buster.mk
-include clang-6.0/clang-6.0.mk
-include dash/dash.mk
-include graal/graal.mk
-include gxx-8/gxx-8.mk
-include paul/paul.mk
