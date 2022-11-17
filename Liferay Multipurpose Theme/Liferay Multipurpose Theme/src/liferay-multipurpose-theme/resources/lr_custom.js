function onLanguageChange(event)
        {
            e = event || window.event;
            var target = e.target || e.srcElement;
            document.location = target.value;
        }

        $(document).ready(function(){
        if ($(".control-menu-container").length <= 0) {
                    $(".page-with-side-bar>.row> div ").addClass("fullHeight");
                }
        });
