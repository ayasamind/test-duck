<template>
  <div v-if="isHorizontal"
    class="form-group"
  >
    <label :for="vaId" class="col-sm-2 control-label">{{ title }}</label>
    <div class="col-sm-10">
      <select
        class="form-control"
        :disabled="isDisabled"
        :multiple="isMultiple"
        @change="sendParams($event.target.value)"
      >
        <option v-if="isEmpty" value=""></option>
        <option v-for="(item,index) in list" :value="index" :data="item" :key="index">
          {{ item }}
        </option>
      </select>
    </div>
  </div>
  <select v-else
    class="form-control" :disabled="isDisabled" :multiple="isMultiple">
      <option v-if="isEmpty" value=""></option>
    <option v-for="(item,index) in list" :data="item" :key="index">
      {{ item }}
    </option>
  </select>
</template>
<script>
export default {
  name: 'va-select',
  props: {
    list: {
      type: Object,
      default: {},
    },
    isDisabled: {
      type: Boolean,
      default: false,
    },
    isMultiple: {
      type: Boolean,
      default: false,
    },
    isHorizontal: {
      type: Boolean,
      default: false,
    },
    isEmpty: {
      typeL: Boolean,
      default: false,
    },
    title: {
      type: String,
    },
    vaId: {
      type: String,
    },
  },
  methods: {
    sendParams(value) {
      this.$emit('input', Number(value));
    },
  },
  created() {

  },
};
</script>
