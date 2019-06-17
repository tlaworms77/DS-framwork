function periodPicker(){
   if($('.ds-ui-periodpicker').length == 0) return ;
   let $periodpicker = $('.ds-ui-periodpicker');
   $periodpicker
      .append('<input type="text" id="fromDate">')
      .append('<div><label>&nbsp;~&nbsp;</label></div>')
      .append('<input type="text" id="toDate">')
      .append('<button id="search" class="search-button"><i class="fa fa-search"></i></button>');

   if($periodpicker.data('dsLanguage') != undefined) {
      let ds_language = $periodpicker.data('dsLanguage');
      $.each($periodpicker.children('input'), (index, datepicker) => {
         let $datepicker = $(datepicker);
         $datepicker.data('dsLanguage', ds_language);
         $datepicker.addClass('period-option');
         htmlInputDate($datepicker);
         // datepicker click event on
         datepickerListener($datepicker);
         initDate($datepicker);
      });
   }
// for tutorial iframe
   $('.search-button').on('click', function(e){
      let period_msg = '';
      if($('#fromDate').val() == '' || $('#toDate').val() == '') {
         period_msg = '기간을 모두 체크해주세요!';
         ds_msgbox.alert(period_msg, 'ico2').done(function() {
         });
      } else{
         period_msg = $('#fromDate').val() + ' ~ ' + $('#toDate').val();
         ds_msgbox.alert(period_msg).done(function() {
         });
      }
   });
}