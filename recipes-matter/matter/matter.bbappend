# Wrynose only allows network access in do_fetch unless a task opts in.
# meta-nxp-matter-baseline clones git submodules in do_checkout_submodules,
# so that task needs network access to succeed.
do_checkout_submodules[network] = "1"
