var vm1 = new Vue({
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
            $.get("http://localhost:8080/mixAttackAll" , function (data1) {
                _this.mData = data1;
            })
            $.get("http://localhost:8080/mixDefenderAll" , function (data2) {
                _this.emData = data2;
            })
        },
    },
});







