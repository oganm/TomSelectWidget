HTMLWidgets.widget({
    name: "tomselect",
    type: "output",
    factory: function(el, width, height){
        var inp = document.createElement("input")
        inp.id = el.id + "-tomselect"
        el.appendChild(inp)
        window.debug_el = el
        var tom = new TomSelect("#" + el.id + "-tomselect")
        return{
            renderValue: function(x){
                window.tom = tom;
            },
            t: tom
        }

    }
});
