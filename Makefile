PROJECT = rabbitmq_web_stomp

DEPS = cowboy sockjs rabbit_common rabbit rabbitmq_stomp
TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers
dep_cowboy_commit = 1.0.3

DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

# FIXME: Use erlang.mk patched for RabbitMQ, while waiting for PRs to be
# reviewed and merged.

ERLANG_MK_REPO = https://github.com/rabbitmq/erlang.mk.git
ERLANG_MK_COMMIT = rabbitmq-tmp

include rabbitmq-components.mk
include erlang.mk
