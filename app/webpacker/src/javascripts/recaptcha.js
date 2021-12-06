$(document).on('turbolinks:load', () => {
    if (typeof(RecaptchaKey) !== 'undefined') {
        $('[data-recaptcha]').submit(function (event) {
            grecaptcha.ready(function () {
                grecaptcha.execute(RecaptchaKey, { action: 'new_contact_request' })
                    .then(function (token) {
                        var hiddenTag = $('<input type="hidden" name="recaptcha">');
                        hiddenTag.val(token);
                        $(event.target).append(hiddenTag);
                        event.target.submit();
                    });
            });
            return false;
        });
    }
});
