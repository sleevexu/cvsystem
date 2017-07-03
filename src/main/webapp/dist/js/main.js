/**
 * Created by Jiajie on 2017/4/27.
 */
$(document).ready(function () {
    $("#submitTest").click(function () {
        if (document.getElementById("otherFact").checked){
            x = $("#otherFactId").val();
            $("otherFact").val(x);
            console.log($("otherFactId"));
        }
    });
});