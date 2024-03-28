#include <erl_nif.h>

static ERL_NIF_TERM
add(ErlNifEnv *env, int argc, const ERL_NIF_TERM argv[]) {
  int a, b;
  // Fill a and b with the values of the first two args
  if (!enif_get_int(env, argv[0], &a) ||
      !enif_get_int(env, argv[1], &b)) {
      return enif_make_badarg(env);
  }

  int result = a + b;

  return enif_make_int(env, result);
}

static ErlNifFunc nif_funcs[] = {
  // {erl_function_name, erl_function_arity, c_function}
  {"add", 2, add}
};

ERL_NIF_INIT(Elixir.Nifs, nif_funcs, NULL, NULL, NULL, NULL)