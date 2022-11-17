
    $(document).ready(function () {
        if ($(".control-menu-container").length > 0) {
            $(".mobile-nav").addClass("mobileMenuAdmin");
        }
        if ($(".control-menu-container").length <= 0) {
            $(".products-catagories-area").addClass("fullHeight");
        }
    });
