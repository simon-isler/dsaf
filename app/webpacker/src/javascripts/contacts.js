const switchTab = (event, action) => {
    event.preventDefault();

    const currentPane = $(event.target).closest('.tab-pane');
    const currentTab = $(`#${currentPane.attr('aria-labelledby')}`);
    currentPane.toggleClass('show active');
    currentTab.toggleClass('active');

    if (action === 'next') {
        currentPane.next().toggleClass('show active');
        $(currentTab.parent().nextAll('.step:first')).children().toggleClass('active')
    } else if (action === 'previous') {
        currentPane.prev().toggleClass('show active');
        $(currentTab.parent().prevAll('.step:first')).children().toggleClass('active');
    }
};

$(document).ready(() => {
    $('.next-tab').on('click', (event) => {
       switchTab(event, 'next');
    });

    $('.previous-tab').on('click', (event) => {
        switchTab(event, 'previous');
    });
});
