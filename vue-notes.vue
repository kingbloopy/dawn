<div>

<template>
  <div class="test">
    <input type="text" v-model="title"><br/></>
    <h1>{{ title }}</h1>
    <p v-if="showName">{{user.firstName}}</p>
    <p v-else>Nobody</p>
    <ul>
      <li v-for="item in items">{{item.title}}</li>
    </ul>
    <button v-on:click="greet('Hello Wrld">Say Greeting</button>
    <input type="text" v-on:keyup="pressKey" />
  </div>
</template>

<script>
  export default {
    name: 'test',
    data() {
      return {
        title: 'Hello World',
        user: {
          firstName: 'John',
          lastName: 'Doe'
        },
        showName: true,
        items: [
          {title: 'Item one'},
          {title: 'Item two'},
          {title: 'Item three'}
        ]
      }
    },
    methods: {
      greet: function(greeting){
        alert(greeting);
      },
      pressKey: function(e){
        console.log(e.target.value);
      }
    }
  }
</script>

</div>