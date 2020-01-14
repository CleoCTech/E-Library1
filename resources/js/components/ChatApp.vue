<template>
    <div class="chat-app">
       <Conversation :contact="selectedContact" :messages="messages"/>
       <Contactlist :contacts="contacts"/>
    </div>
</template>

<script>
    import Conversation from './Conversation';
    import Contactlist from './Contactlist';
    export default {
        props: {
            user: {
                type: Object,
                required: true
            }
        },
        data(){
            return{
                selectedContact:null,
                messages: [],
                contacts: []
            };
        },
        mounted() {
            console.log(this.user); 
            axios.get('/contacts')
            .then((response)=>{
                console.log(response.data);
                this.contacts = response.data;
            });
        },
        components: {Conversation, Contactlist}
    }
</script>
