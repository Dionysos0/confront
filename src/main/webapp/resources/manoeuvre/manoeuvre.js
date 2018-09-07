var vm = new Vue({
    el: "#missileData",
    data: {
        mData:"",
        emData:"",
    },
    mounted: function () {
        this.$nextTick(function () {
        })
        this.getmessileData();
    },
    methods: {
        getmessileData: function () {
            var _this = this;
            $.get("http://192.168.1.102:8080/mixAttackAll" , function (data) {
                _this.mData = data;
            })
            $.get("http://192.168.1.102:8080/mixDefenderAll" , function (data) {
                _this.emData = data;
            })
        },
    },
});







