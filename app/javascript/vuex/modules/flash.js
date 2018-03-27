const flash = {
  namespaced: true,
  state: {
    flash: {
      status: '',
      message: '',
    },
  },
  getters: {
    getFlash: state => state.flash
  },
  mutations: {
    flash(state, response) {
      state.flash.message = response.message;
      state.flash.status = response.status;
    },
    end(state) {
      state.flash.message = '';
      state.flash.status = '';
    },
  },
};

export default flash;
