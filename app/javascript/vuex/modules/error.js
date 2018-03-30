const error = {
  namespaced: true,
  state: {
    error: {},
  },
  getters: {
    getError: state => state.error
  },
  mutations: {
    setError(state, response) {
      state.error = response.error_message;
    },
  },
};

export default error;
