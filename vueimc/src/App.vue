<template>
  <persona3 :token ="token" />
</template>

<script>
import persona3 from './components/persona3.vue'

export default {
  name: "App",
  data () {
    return {
      token: "token vacio"
    };
  },
  components: {
    persona3
  },
  async beforeCreate() {
    const requestOptions = {
      method: "POST",
      body: JSON.stringify({ "id": 1 }),
      headers: {
        "Content-Type": "application/json"
      }
    };
    fetch("http://localhost:8080/api/auth", requestOptions)
      .then(async response => {
        const data = await response.json();
        if (!response.ok) {
          const error = (data && data.message) || response.status;
          return Promise.reject(error);
        }
        this.token = data.token;
      })
      .catch((error) => {
        this.token = error;
        console.error("error al consultar el token", error);
      });
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
