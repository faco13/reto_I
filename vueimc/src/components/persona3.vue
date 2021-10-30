<template>
    <h2>Mostrar Personas</h2>
    <h3>{{token}}</h3>
    <button v-on:click="cargarPersona"> Cargar Personas </button>
    <ol>
        <li v-for="persona in prueba_imc" :key="persona.id">{{ persona.nombre}}</li>
    </ol>
</template>
<script>

export default {
  name:"persona3", 
  props:{
      token:String
  },
  data(){
      return {
          personas:[]
      }
   },
   methods:{
       async cargarPersona(){
           const requestOptions={
               method:"GET",
               headers:{
                   "Authorization":this.token,
                   "Content-Type":"application/json"
               }
           };
           const respuesta = await fetch("http://localhost:8080/api/personas",requestOptions);
           this.personas = await respuesta.json(); 
     }
   }
}
</script>
<style lang="scss" scoped>

</style>