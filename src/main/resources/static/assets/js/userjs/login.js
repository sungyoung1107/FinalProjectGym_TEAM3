var win = navigator.platform.indexOf('Win') > -1;
if (win && document.querySelector('#sidenav-scrollbar')) {
    var options = {
        damping: '0.5'
    }
    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
}


let login_form = {
    init: function () {
        $('#login_btn').click(function () {
            login_form.send();
        });
    },
    send: function () {
        $('#login_form').attr({
            'action': '/gym/loginimpl',
            'method': 'post'
        });
        $('#login_form').submit();
    }
}
