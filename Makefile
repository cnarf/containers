.PHONY:: all clean
all::
clean::

TAG:=${shell cat /etc/hostname}
%.iid: */%.dockerfile
	{ \
		NAME="${basename $@}"; \
		TAGGED_NAME="cnarf/$${NAME}:${TAG}"; \
		docker build --rm --pull --build-arg TAG=${TAG} -t $${TAGGED_NAME} --iidfile $@	-f $< $${NAME} \
		&& docker push $${TAGGED_NAME}; \
	}

-include stretch/stretch.mk
-include buster/buster.mk

-include clang-6.0/clang-6.0.mk
-include gxx-8/gxx-8.mk

-include graal/graal.mk

-include paul/paul.mk

-include dash/dash.mk
