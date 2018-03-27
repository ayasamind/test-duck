<template>

  <div v-if="isHorizontal"
    class="form-group"
  >

    <label :for="vaId" class="col-sm-2 control-label">{{ title }}</label>
    <div class="col-sm-10">
      <input
        :type="type"
        :class="[formControl]"
        :id="vaId"
        :placeholder="placeholder"
        :value="value"
        @blur="sendParams($event.target.value)"
        >
      </input>
    </div>

  </div>
  <input v-else
         :type="type"
         :class="[formControl]"
         :id="vaId"
         :placeholder="placeholder"
         :value="value"
         :disabled="isDisabled"
         @blur="sendParams($event.target.value)"
         >
  </input>


</template>

<script>
export default {
  name: 'va-input',
  props: {
    type: {
      type: String,
      default: 'text',
    },
    vaId: {
      type: String,
    },
    placeholder: {
      type: String,
      default: 'Enter Text...',
    },
    size: {
      type: String,
    },
    value: {
      type: String,
    },
    isFormControl: {
      type: Boolean,
      default: true,
    },
    isHorizontal: {
      type: Boolean,
      default: false,
    },
    title: {
      type: String,
    },
    isDisabled: {
      type: Boolean,
      default: false,
    },
  },
  methods: {
    sendParams(value) {
      this.$emit('input', value);
    },
  },
  computed: {
    formControl() {
      return this.isFormControl ? 'form-control' : '';
    },
  },
  created() {
  },
};
</script>
