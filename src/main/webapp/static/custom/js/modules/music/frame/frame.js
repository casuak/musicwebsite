var app = new Vue({
    el: '#app',
    data: {
        contentUrl: '',
    },
    watch: {

    },
    methods: {
        changeContent: function (name) {
            switch (name){
                case '1':
                    this.contentUrl = 'music/search';
                    break;
                case '2':
                    this.contentUrl = 'music/findMusic';
                    break;
            }
        }
    },
    mounted: function () {
        this.contentUrl = 'music/search';
    }
});