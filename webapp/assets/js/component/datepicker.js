
/*date-picker*/
// datePicker setting
const datePicker = () => {
   // datepicker render
   if($('.ds-ui-datepicker').length != 0) {
      $.each($('.ds-ui-datepicker'), (index, component) => {
         if( $(component).data('transform') == true ) return true;
         htmlInputDate($(component));
         // datepicker click event on
         initDate($(component));
         setDate($(component));
         datepickerListener($(component));
         // if($(component).data('dsBinding') == undefined || $(component).data('dsForm') == undefined) return true;
         $(component).data('transform', true);
         // dateBind($(component));
      });
   }
}
const setDate = ($target) => {
   // if( $target.data('dsInitDate') != undefined ) return;
   // console.log($target.val());
   if($target.val() != '') {
      let reg = /([12]\d{3}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01]))/,
          YYYYMMDD = $target.val();
      if(reg.test( YYYYMMDD )) {
         let yyyy = YYYYMMDD.substr(0, 4),
               mm = YYYYMMDD.substr(4, 2),
               dd = YYYYMMDD.substr(6, 2)
               YYYYMMDD = yyyy + '-' + mm + '-' + dd;
         $target.val(YYYYMMDD);
         // console.log($self);
      }
   }
}

// const dateBind = ($target) => {
//    let dataObject = '',
//        targetColumn = '',
//        init_value = '',
//        unique_value = '';

//    let jsonObjectIsTure = dataObjectExistenceCheck($target);
//    if(!jsonObjectIsTure) return;

//    if($(eval($target.data('dsBinding'))) == undefined) return;
//    else dataObject = eval($target.data('dsBinding'));

//    if($target.data('dsForm') == undefined) return ;
//    else targetColumn = $target.data('dsForm');
   
//    if(getParameterByName('no') != undefined) unique_value = getParameterByName('no');
   
//    if($(dataObject)[0].no == undefined) return console.warn("JsonObject's unique_column[no] does not exist.");

//    if(unique_value == '') unique_value = $(dataObject)[0].no;

//    if(unique_value == '') return;
   
//    $.each(dataObject, (index, row)=>{
//       if(row.no==unique_value) {
//          init_value = row[targetColumn];
//          $target.val(init_value);
//          return ;
//       }
//    });
// }

const htmlInputDate = ($target) => {
   $target.wrap('<div class="ds-ui-datepicker-box"></div>')
      .addClass('ds-ui-datepicker')
      .attr('readonly', 'readonly');
   $target[0].dataset.dsIsPopup = false;
   if($target.data('dsLabel')) {
      $target.before('<div class="datepicker-label-box"></div>')
         .prev().append('<label>' + $target.data('dsLabel') + '</label>');
   }
}

const datepickerListener = ($target) => {
   $target.on('click', function(event){
      // basicModal();
      dateModal($target);
   });
}

const initDate = ($target) => {
   // if( $target.val() != undefined ) return;
   if( $target.data('dsInitDate') == true && 
      $('.ds-ui-datepicker-box').length != 0 ) {
      transDate = today.getFullYear() + '-' 
      + (today.getMonth() + 1 < 10 ? '0' : '') 
      + (today.getMonth() + 1) + '-' 
      + (today.getDate() < 10 ? '0' : '') 
      + today.getDate();
      $target[0].value = transDate;
   }
}

let today = new Date(); // 오늘 날짜
function prevCalendar($targetPB) {
   // today = new Date(today.getFullYear(), today.getMonth() -1, today.getDate());
   today = new Date(today.getFullYear(), today.getMonth(), 0);
   buildCalendar($targetPB);
}
function nextCalendar($targetPB) {
   // today = new Date(today.getFullYear(), today.getMonth() +1, today.getDate());
   today = new Date(today.getFullYear(), today.getMonth() +1, 1);
   buildCalendar($targetPB);
}

function abbreviationDate(target, len) {
   return target.substring(0, len);
}

function buildCalendar($targetPB) {
   if($targetPB.date != undefined) {
      today = new Date($targetPB.date.year, $targetPB.date.month-1);
      $targetPB.date = undefined;
   }
   if($targetPB.hasDate != undefined) {
      // console.log('hasDate');
      today = $targetPB.hasDate;
      $targetPB.hasDate = undefined;
   }
   $targetPB.today = today;

   let nMonth = new Date(today.getFullYear(), today.getMonth(), 1); // 이번 달의 첫째 날
   let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); // 이번 달의 마지막 날
   let $tbCalendar = $targetPB.find('.date-tb'); // 테이블 달력을 만들 테이블 선택
   let $tbCalendarYM = $targetPB.find('.date-tb-title'); // yyyy년 mm월 출력할 곳
   
   // 오늘 날짜
   let currentYear = today.getFullYear();
   let currentMonth = today.getMonth() + 1;
   let exp_date = {
      ko:{
         month: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
         week: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일']
      },
      en:{
         month:['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
         week:['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
      }
   }
   
   let currentDate = today.getDate();
   let currentVIP = null; // 요일
   exp_month = null;
   exp_week = null;
   exp_year = null;
   exp_day = null;
   // console.log($targetPB);
   if($targetPB.hasClass('ko')) {
      $tbCalendarYM.addClass('ko');
      exp_year = currentYear + '년';
      exp_month = exp_date.ko.month[currentMonth-1];
      exp_day = currentDate + '일';
      exp_week = exp_date.ko.week;
      currentVIP = abbreviationDate(exp_week[today.getDay()], 1);
   } else if($targetPB.hasClass('en')) {
      $tbCalendarYM.addClass('en');
      exp_year = currentYear;
      exp_month = exp_date.en.month[currentMonth-1];
      exp_week = exp_date.en.week;
      exp_month = abbreviationDate(exp_month, 3) + '.';
      exp_day = currentDate;
      currentVIP = abbreviationDate(exp_week[today.getDay()], 2);
   }

   tempValue = exp_month + ' ' + exp_day + ' (' + currentVIP + ')';
   $targetPB.find('.date-title').children('span').text(tempValue);
   $targetPB.find('.date-subtitle').children('span').text(exp_year);
   $tbCalendarYM.children().text(exp_year);
   $tbCalendarYM.children().next().text(exp_month);

   if($targetPB.hasClass('ko')) {
      if($tbCalendar.find('th').length == 0){
         for(var i=0; i<exp_week.length; i++){
            $tbCalendar.children()
            .append('<th>' + abbreviationDate(exp_week[i], 1) + '</th>');
         }
      }
   }
   if($targetPB.hasClass('en')) {
      if($tbCalendar.find('th').length == 0){
         for(var i=0; i<exp_week.length; i++){
            $tbCalendar.children()
            .append('<th>' + abbreviationDate(exp_week[i], 2) + '</th>');
         }   
      }
   }

   while ($tbCalendar[0].rows.length > 1) {
      $tbCalendar[0].deleteRow($tbCalendar[0].rows.length - 1);
   }
   let row = null;
   row = $tbCalendar[0].insertRow();
   let cnt = 0;
   // 1일이 시작되는 칸을 맞추어 줌
   for (i=0; i<nMonth.getDay(); i++) {
      cell = row.insertCell();
      cnt = cnt + 1;
   }
   currentTd = cnt + currentDate;
   // console.log(currentMonth)
   let transMonth = (currentMonth < 10 ? '0' : '') + currentMonth,
       hollydays = [];
   // // ajax -> get hollydays...
   $.ajax({
      url: "http://localhost:8080/framework/api/hollydays/" + currentYear + "/" + transMonth + "",
      // url: "http://localhost/dsproject/api/hollydays/" + 2019 + "/" + '09' + "", //test:추석
      type: "GET",
      dataType: "html",
      success: function (response) {
         // div.innerText = response;
         let apiData = decodeURIComponent( response ),
             hollydayList = apiData.split('/');
         $.each(hollydayList, (index, hollyday) => {
            // console.log(hollyday)
            if(hollyday == '') return true;
            hollyday = hollyday.split(',');
            let holly_year = hollyday[1].substr(0, 4),
                holly_month = hollyday[1].substr(4, 2),
                holly_date = hollyday[1].substr(6, 2);
            
            hollydays.push({
               dateName : hollyday[0],
               fullDate : hollyday[1],
               hollyYear : holly_year,
               hollyMonth : holly_month,
               hollyDate : holly_date
            });
         });
         //hollyday color : red;
         $.each($targetPB.find('.date-tb td'), (index, cell)=>{
            for(idx=0; idx<hollydays.length; idx++) {
               if(cell.innerText == '') return true;
               if( cell.innerText == parseInt(hollydays[idx].hollyDate) ) {
                  $(cell).addClass('holidays');
               }
            }
         });
      },
      error: function (xhr, status) {
         alert('Error: ' + status);
      }
   });
   
   for (i=1; i<=lastDate.getDate(); i++) {
      cell = row.insertCell();
      cell.innerHTML = i;
      cnt = cnt + 1;
      // console.log(cnt);

      

      //weekends color : red;
      if(cnt%7 == 0 || cnt%7 == 1)
         $(cell).addClass('weekends');
      
      if (cnt%7 == 0)   // 1주일이 7일 이므로
         row = $tbCalendar[0].insertRow();   // 줄 추가
   }

   // init-selected date
   $($targetPB.find('.date-tb td')[currentTd-1]).addClass('selected');

   $prevTarget = null;
   $currentTarget = null;
   isMove = null;
   // popup touchstart
   $targetPB.find('.date-tb td').unbind('touchstart mousedown').bind('touchstart mousedown', (e) => {
      // e.preventDefault();
      isMove = false;
      // console.log(e.target.innerHTML)
      if(!$(e.target).is('td') || ($(e.target).is('td') && e.target.innerHTML == '') ) {
         $prevTarget = $currentTarget = null;
         return ;
      }
      $currentTarget = $(e.target);
      $targetPB.find('.date-tb td').removeClass('selecting');
   });
   // popup touchmove
   $targetPB.find('.date-tb td').unbind('touchmove mousemove').bind('touchmove mousemove', (e) => {
      e.preventDefault();
      isMove = true;
      if($currentTarget == null) return;
      
      $currentTarget = $(targetFromPoint(e));
      if ($currentTarget.is('td') && $currentTarget[0].innerHTML != '') {
         if($prevTarget == null) $prevTarget = $currentTarget;
         if($prevTarget != $currentTarget) {
            $prevTarget.removeClass('selecting');
            $currentTarget.addClass('selecting');
            $prevTarget = $currentTarget;
         }
      } 
      else { // if (!$currentTarget.is('td') || (!$currentTarget.is('td') && $currentTarget[0].innerHTML == ''))
         $currentTarget = $prevTarget;
      }
   });
   // popup touchend
   $targetPB.find('.date-tb td').unbind('touchend mouseup').bind('touchend mouseup', (e) => {
      e.preventDefault();
      
      if($currentTarget == null) return;

      $targetPB.find('.date-tb td').removeClass('selected');
   
      if ($currentTarget.is('td') && $currentTarget[0].innerHTML != '') {
         currentDate = $currentTarget[0].innerHTML;
      } 
      if (!$currentTarget.is('td') || ( $currentTarget.is('td') && $currentTarget[0].innerHTML == '' )) {
         if($prevTarget == null) return;
         $currentTarget = $prevTarget;
         currentDate = $currentTarget[0].innerHTML;
      };
      
      // today reset
      today.setDate(currentDate);

      if($targetPB.hasClass('ko')) {
         $tbCalendarYM.addClass('ko');
         exp_year = currentYear + '년';
         exp_month = exp_date.ko.month[currentMonth-1];
         exp_day = currentDate + '일';
         exp_week = exp_date.ko.week;
         currentVIP = abbreviationDate(exp_week[today.getDay()], 1);
      } else if($targetPB.hasClass('en')) {
         $tbCalendarYM.addClass('en');
         exp_year = currentYear;
         exp_month = exp_date.en.month[currentMonth-1];
         exp_week = exp_date.en.week;
         exp_month = abbreviationDate(exp_month, 3) + '.';
         exp_day = currentDate;
         currentVIP = abbreviationDate(exp_week[today.getDay()], 2);
      }

      tempValue = exp_month + ' ' + exp_day + ' (' + currentVIP + ')';
      
      $targetPB.find('.date-title').children('span').text(tempValue);
      $targetPB.find('.date-subtitle').children('span').text(exp_year);

      if(!isMove) {
         $targetPB.find('.date-tb td').removeClass('selected');
         $(e.target).addClass('selected');
         if($currentTarget[0].innerHTML != '') {
            $currentTarget.addClass('selected');
            return ;
         }
      }
      
      if($prevTarget == null) return ;
      if($prevTarget[0].innerHTML != '')
         $prevTarget.addClass('selected');
   });

}
const targetFromPoint = (event) => {
   let pageX = (event.type == "mousemove") ? event.pageX : (event.originalEvent.touches[0].pageX || event.originalEvent.changedTouches[0].pageX),
       pageY = (event.type == "mousemove") ? event.pageY : (event.originalEvent.touches[0].pageY || event.originalEvent.changedTouches[0].pageY);
   
   return document.elementFromPoint(pageX, pageY);
}

let wiget_periodpicker = [];
const dateModal = ($target) => {
   
   let init_today = today;
   if($target.val() != '') {
      let ymd = $target.val().split('-'),
          yyyy = ymd[0],
          mm = ymd[1],
          dd = ymd[2];
          
      today = new Date(yyyy, parseInt(mm)-1, dd);
      init_today = today;
   }
   
   basicModal($target);
   $targetPB = $('#' + $target[0].id + '_pb');
   $targetPB.today = today;
   htmlPopupBox($target, $targetPB);

   datepickerScope_UX($target, $targetPB);
   periodPickerScope_UX($targetPB);
   $('#' + $target[0].id + '-close').unbind('click').bind('click', () => {
      $targetPB.hasDate = init_today;
      buildCalendar($targetPB);
      $targetPB.addClass('popup-off');
   });

   $('#' + $target[0].id + '-check').unbind('click').bind('click', () => {
      let popup_id = $target[0].id,
          $current_YM = $targetPB.find('.date-tb-title div'),
          current_year = $current_YM[0].innerText.replace(/[^0-9]/g,""),
          current_month = $current_YM[1].innerText.replace(/월/g,"").replace(/\./g,""),
          current_date = $targetPB.find('.date-tb td.selected')[0].innerText;

      if($targetPB.is('.en')) {
         let month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
         current_month = month.indexOf(current_month) + 1;
      }
      current_year = parseInt(current_year),
      current_month = parseInt(current_month),
      current_date = parseInt(current_date);
      
      if(popup_id.indexOf('from') != -1) {
         wiget_periodpicker.fromDate = new Date(current_year, current_month - 1, current_date);
      } else if(popup_id.indexOf('to') != -1) {
         wiget_periodpicker.toDate = new Date(current_year, current_month - 1, current_date);
      }

      let transDate = current_year + '-' 
                    + (current_month < 10 ? '0' : '')
                    + current_month + '-' 
                    + (current_date < 10 ? '0' : '') 
                    + current_date;
      
      $targetPB.hasDate = new Date(current_year, current_month-1, current_date);
      buildCalendar($targetPB);
      $target[0].value = transDate;
      $targetPB.addClass('popup-off');
   });

   popupYear_Mode($targetPB);
   

   $target[0].dataset.dsIsPopup =  true;
}

const datepickerScope_UX = ($target, $targetPB) => {

   if($target.data('dsMin') == undefined || $target.data('dsMax') == undefined) return;

   let std_today = $targetPB.today,
       std_year = std_today.getFullYear(),
       std_month = ((std_today.getMonth() + 1) < 10 ? '0' : '') + (std_today.getMonth() + 1),
       std_date = ((std_today.getDate()) < 10 ? '0' : '') + (std_today.getDate()),
       std_fullDate = parseInt(std_year + std_month + std_date),
       min_fullDate = '', min_year = '', min_month = '', min_date = '',
       max_fullDate = '', max_year = '', max_month = '', max_date = '';
   
   if($target.data('dsMin') != undefined) {
      if(std_fullDate < $target.data('dsMin')) return console.error("data-ds-min's value is bigger.");
      // let min_date = $target.data('dsMin');
      // dateMinMax($target, $targetPB, min_date, 'min');
      min_fullDate = $target.data('dsMin'),
      min_year = min_fullDate.toString().substr(0,4),
      min_month = min_fullDate.toString().substr(4,2),
      min_date = min_fullDate.toString().substr(6,2);
   }
   if($target.data('dsMax') != undefined) {
      if(std_fullDate > $target.data('dsMax')) return console.error("data-ds-max's value is smaller.");
      // let max_date = $target.data('dsMax');
      // dateMinMax($target, $targetPB, max_date, 'max');
      max_fullDate = $target.data('dsMax'),
      max_year = max_fullDate.toString().substr(0,4),
      max_month = max_fullDate.toString().substr(4,2),
      max_date = max_fullDate.toString().substr(6,2);
   }
   // console.log(std_month)
   // console.log(min_month)
   $targetPB.find('.ic-express-np div').removeClass('off');
   if(min_fullDate != '' && parseInt(std_year + std_month) <= parseInt(min_year + min_month)) $targetPB.find('.ic-express-np .fa-angle-left').parent().addClass('off');
   if(max_fullDate != '' && parseInt(std_year + std_month) >= parseInt(max_year + max_month)) $targetPB.find('.ic-express-np .fa-angle-right').parent().addClass('off');
   $.each($targetPB.find('.date-tb td'), (index, cell) => {
      if(min_fullDate != '' && cell.innerText != '' && parseInt(std_year + std_month + (parseInt(cell.innerText) < 10 ? '0' : '') + cell.innerText) < parseInt(min_fullDate)) cell.innerText = '';
      if(max_fullDate != '' && cell.innerText != '' && parseInt(std_year + std_month + (parseInt(cell.innerText) < 10 ? '0' : '') + cell.innerText) > parseInt(max_fullDate)) cell.innerText = '';
   });

}

const periodPickerScope_UX = ($targetPB) => {
   let popup_id = $targetPB[0].id;

   if(popup_id.indexOf('from') != -1) {   //is fromDate? (true)
      if(wiget_periodpicker.toDate != undefined) { // toDate's value has
         dateScope($targetPB, 'from');
      }
   } else if(popup_id.indexOf('to') != -1) { //is toDate? (true)
      if(wiget_periodpicker.fromDate != undefined) {
         dateScope($targetPB, 'to');
      }
   } else return;
   
}

const dateScope = ($targetPB, which) => {
   let which_today = ''
   if(which == "from") which_today = wiget_periodpicker.toDate;
   if(which == "to")  which_today = wiget_periodpicker.fromDate;
   
   let yyyy = which_today.getFullYear(),
         mm = which_today.getMonth() + 1,
         dd = which_today.getDate(),
         $current_YM = $targetPB.find('.date-tb-title div'),
         current_year = $current_YM[0].innerText.replace(/[^0-9]/g,""),
         current_month = $current_YM[1].innerText.replace(/월/g,"").replace(/\./g,"");
   if($targetPB.is('.en')) {
      let month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      current_month = month.indexOf(current_month) + 1;
   }
   let current_fullDate = '',
       which_fullDate = '',
       td_list = '';

   which_fullDate = parseInt(yyyy + (mm < 10 ? '0' : '') + mm + (dd < 10 ? '0' : '') + dd);
   // console.log(which_fullDate);
   td_list = $targetPB.find('.date-tb td');
   $.each(td_list, (index, cell) => {
      current_fullDate = parseInt(current_year + (current_month < 10 ? '0' : '') + current_month + (cell.innerText < 10 ? '0' : '') + cell.innerText);
      if(which == "from" && current_fullDate > which_fullDate) {
         $(cell)[0].innerText='';
      } else if(which == "to" && current_fullDate < which_fullDate) {
         $(cell)[0].innerText='';
      }
   });

   let current_date = $targetPB.find('.date-tb td.selected')[0].innerText;
   if(current_date == '') {
      today = which_today;
      buildCalendar($targetPB);

      $current_YM = $targetPB.find('.date-tb-title div'),
      current_year = $current_YM[0].innerText.replace(/[^0-9]/g,""),
      current_month = $current_YM[1].innerText.replace(/월/g,"").replace(/\./g,"");
      if($targetPB.is('.en')) {
         let month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
         current_month = month.indexOf(current_month) + 1;
      }

      td_list = $targetPB.find('.date-tb td');
      
      $.each(td_list, (index, cell) => {
         current_fullDate = parseInt(current_year + (current_month < 10 ? '0' : '') + current_month + ($(cell)[0].innerText < 10 ? '0' : '') + $(cell)[0].innerText);
         if(which == "from" && current_fullDate > which_fullDate) {
            $(cell)[0].innerText='';
         } else if(which == "to" && current_fullDate < which_fullDate) {
            $(cell)[0].innerText='';
         }
      });
   }
   let current_ym = parseInt(current_year + (current_month < 10 ? '0' : '') + current_month),
         which_ym = parseInt(yyyy + (mm < 10 ? '0' : '') + mm);
   $targetPB.find('.date-component-spinner .ic-express-np').children('div').removeClass('off');

   if(which == "from" && current_ym >= which_ym) {
      $targetPB.find('.fa-angle-right').parent().addClass('off');
   } 
   if(which == "to" && current_ym <= which_ym) {
      $targetPB.find('.fa-angle-left').parent().addClass('off');
   }

}

const popupYear_Mode = ($targetPB) => {
   $targetPB.find('.date-subtitle span').unbind('click').bind('click', (e) => {
      if(!$targetPB.find('.date-component-spinner, .popup-footer, .date-header').is('.off')) {
         $targetPB.find('.date-component-spinner, .popup-footer, .date-header').addClass('off');
         $targetPB.find('.popup-body').css('display', 'unset');
         $targetPB.find('.popup').css('height', 'auto');
         let html = popupYear_Template();
         $targetPB.find('.popup-header').append(html.header);
         $targetPB.find('.popup-body').append(html.body);
         popupYear_Init($targetPB);
         popupYear_Action($targetPB)
      }
   });
}

const popupYear_Action = ($targetPB) => {
   // cancel || back datePicker
   $targetPB.find('.year-header span').unbind('click').bind('click', (e)=> {
      if($targetPB.find('.month-body').length != 0) {
         $targetPB.find('.month-body').remove();
         $($targetPB.find('.year-header div')[0]).removeClass('off');
         $($targetPB.find('.year-header div')[2]).removeClass('off');
         $targetPB.find('.year-body').removeClass('off');
         return false;
      }
      $targetPB.find('.year-header').remove();
      $targetPB.find('.year-body').remove();
      $targetPB.find('.date-component-spinner, .popup-footer, .date-header').removeClass('off');
      // $target = $('#' + $targetPB[0].id.split('_')[0]);
      // datepickerScope_UX($target, $targetPB)
   });
   // left year && right year
   let $left_btn = $($targetPB.find('.year-header i')[0]);
   let $right_btn = $($targetPB.find('.year-header i')[1]);
   // left event
   $left_btn.unbind('click').bind('click', (e)=>{
      popupYear_render($targetPB, 'left');
   });
   // right event
   $right_btn.unbind('click').bind('click', (e)=>{
      popupYear_render($targetPB, 'right');
   });
   // td:ux_scope check
   popupYearScope_UX($targetPB);
   // td:year Action
   popupYear_CellAction($targetPB);
   
}
const popupYearScope_UX = ($targetPB) => {
   let popup_id = $targetPB[0].id;

   if(popup_id.indexOf('from') != -1) {   //is fromDate? (true)
      if(wiget_periodpicker.toDate != undefined) { // toDate's value has
         yearScope($targetPB, 'from');
      }
   } else if(popup_id.indexOf('to') != -1) { //is toDate? (true)
      if(wiget_periodpicker.fromDate != undefined) {
         yearScope($targetPB, 'to');
      }
   } else {
      yearScope($targetPB, 'date');
   };
}
const yearScope = ($targetPB, which) => {
   let which_today = '',
       $cell_list = $targetPB.find('.year-body td');

   if(which == "from") {
      which_today = wiget_periodpicker.toDate;
      let yyyy = which_today.getFullYear(),
          yearAction_check = false;
      $.each($cell_list, (index, td) => {
         if($(td)[0].innerText > yyyy) {
            $(td)[0].innerText = '';
         }
         if($(td)[0].innerText >= yyyy) yearAction_check = true;
      });
      $($targetPB.find('.year-header i')[1]).removeAttr('style');
      $($targetPB.find('.year-header div')[2]).children('div').remove();
      if(yearAction_check == true) {
         $($targetPB.find('.year-header i')[1]).attr('style', 'display:none');
         $($targetPB.find('.year-header div')[2]).append('<div style="padding: 18.4px 18.32px;"></div>');
      }
   }
   if(which == "to") {
      which_today = wiget_periodpicker.fromDate;
      let yyyy = which_today.getFullYear(),
          yearAction_check = false;
      $.each($cell_list, (index, td) => {
         if($(td)[0].innerText < yyyy) {
            $(td)[0].innerText = '';
            yearAction_check = true;
         }
         if($(td)[0].innerText <= yyyy) yearAction_check = true;
      });
      $($targetPB.find('.year-header i')[0]).removeAttr('style');
      $($targetPB.find('.year-header div')[0]).children('div').remove();
      if(yearAction_check == true) {
         $($targetPB.find('.year-header i')[0]).attr('style', 'display:none');
         $($targetPB.find('.year-header div')[0]).append('<div style="padding: 18.4px 18.32px;"></div>');
      }
   }
   if(which == "date") {
      $($targetPB.find('.year-header i')).removeAttr('style');
      let pbid = $targetPB[0].id,
          target_id = '#' + pbid.split('_')[0],
          $target = $(target_id),
          min_fullDate = '',
          max_fullDate = ''.
          yearAction_check = false;
      // console.log(min_fullDate)
      // console.log(max_fullDate)
      if($target.data('dsMin') != undefined && $target.data('dsMax') != undefined) {
         min_fullDate = $target.data('dsMin'),
         max_fullDate = $target.data('dsMax');
      } else if($target.data('dsMin') != undefined) {
         min_fullDate = $target.data('dsMin');
      } else if($target.data('dsMin') != undefined) {
         max_fullDate = $target.data('dsMax');
      }

      let left_check = '',
          right_check = '';
      $.each($targetPB.find('.year-body td'), (index, cell) => {
         if($target.data('dsMin') != undefined && parseInt(cell.innerText) <= parseInt($target.data('dsMin').toString().substr(0, 4)) ) left_check = true;
         if($target.data('dsMax') != undefined && parseInt(cell.innerText) >= parseInt($target.data('dsMax').toString().substr(0, 4)) ) right_check = true;
         if($target.data('dsMin') != undefined && parseInt(cell.innerText) < parseInt($target.data('dsMin').toString().substr(0,4)) ) $(cell).addClass('off');
         if($target.data('dsMax') != undefined && parseInt(cell.innerText) > parseInt($target.data('dsMax').toString().substr(0,4)) ) $(cell).addClass('off');
      });
      if(left_check == true) {
         $($targetPB.find('.year-header i')[0]).attr('style', 'opacity: 0; pointer-events: none;');
      }
      if(right_check == true) {
         $($targetPB.find('.year-header i')[1]).attr('style', 'opacity: 0; pointer-events: none;');
      }
   }
}
// cellClick
const popupYear_CellAction = ($targetPB) => {
   let $cell_btn = $targetPB.find('.year-body td');
   let td_list = [];
   $.each($cell_btn, (index, td) => {
      if($(td)[0].innerText != '')
         td_list.push(td);
   });
   $(td_list).unbind('click').bind('click', (e) => {
      let self = e.target;
      popupMonth_Mode($targetPB, self);
   });

}

// popupMonth Mode
const popupMonth_Mode = ($targetPB, self) => {
   $targetPB.find('.year-body').addClass('off');
   if($($targetPB.find('.year-header>div')[0]).children('div').length == 0) {
      $($targetPB.find('.year-header>div')[0]).append('<div style="padding: 18.4px 18.32px;"></div>');
      $($targetPB.find('.year-header div i')[0]).attr('style', 'display:none');
   }
   if($($targetPB.find('.year-header>div')[2]).children('div').length == 0) {
      $($targetPB.find('.year-header>div')[2]).append('<div style="padding: 18.4px 18.32px;"></div>');
      $($targetPB.find('.year-header div i')[1]).attr('style', 'display:none');
   }
   $targetPB.find('.year-header span')[0].innerText = self.innerHTML;

   let html = popupMonth_Template();
   $targetPB.find('.popup-body').append(html.body);
   popupMonth_Init($targetPB);
   popupMonthScope_UX($targetPB);
   popupMonth_Action($targetPB);

}
const popupMonth_Action = ($targetPB) => {
   let $td_list = $targetPB.find('.month-body td'),
       td_list = [];

   $.each($td_list, (index, td) => {
      if($(td)[0].innerText != '') {
         td_list.push(td);
      }
   });

   $(td_list).unbind('click').bind('click', (e) => {
      let date_year = $($targetPB.find('.year-header span'))[0].innerText,
          date_month = e.target.innerText,
          result = [];
      result.year = parseInt(date_year),
      result.month = parseInt(date_month);

      // html reSet!
      $targetPB.find('.year-header').remove();
      $targetPB.find('.year-body').remove();
      $targetPB.find('.month-body').remove();
      $targetPB.find('.date-component-spinner').removeClass('off');
      $targetPB.find('.date-header').removeClass('off');
      $targetPB.find('.popup-footer').removeClass('off');
      $targetPB.find('.popup').removeAttr('style'); 

      // $targetPB.find('') 다시하기 데이트 리랜더링
      $targetPB.date = result;
      buildCalendar($targetPB);
      periodPickerScope_UX($targetPB);
      let $target = $('#' + $targetPB[0].id.split('_')[0]);
      datepickerScope_UX($target, $targetPB);
   });
}

const popupMonth_Init = ($targetPB) => {
   let current_month = $targetPB.find('.date-tb-title div')[1].innerText.replace(/월/g,"").replace(/\./g,"");
   
   if($targetPB.is('.en')) {
      let month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      current_month = month.indexOf(current_month);
   }
   
   let $table_month = $targetPB.find('.month-body table');
   let row = null;
   row = $table_month[0].insertRow();
   for(var i=1; i<=12; i++) {
      cell = row.insertCell();
      cell.innerHTML = i;
      if(i % 3 == 0 && i!=12) row = $table_month[0].insertRow();
   }

}
const popupMonthScope_UX = ($targetPB) => {
   let popup_id = $targetPB[0].id;

   if(popup_id.indexOf('from') != -1) {   //is fromDate? (true)
      if(wiget_periodpicker.toDate != undefined) { // toDate's value has
         monthScope($targetPB, 'from');
      }
   } else if(popup_id.indexOf('to') != -1) { //is toDate? (true)
      if(wiget_periodpicker.fromDate != undefined) {
         monthScope($targetPB, 'to');
      }
   } else {
      monthScope($targetPB, 'date');
   };
}
const monthScope = ($targetPB, which) => {
   let which_today = '',
       current_yyyy = parseInt($targetPB.find('.year-header div span')[0].innerText),
       yyyy = '';
   if(which == "from") {
      which_today = wiget_periodpicker.toDate;
      yyyy = which_today.getFullYear();
      if(current_yyyy < yyyy) return;
   }
   if(which == "to") {
      which_today = wiget_periodpicker.fromDate;
      yyyy = which_today.getFullYear();
      if(current_yyyy > yyyy) return;
   }

   if(which == "from" || which == "to") {
      let mm = which_today.getMonth() + 1,
      $td_list = $targetPB.find('.month-body td');
      $.each($td_list, (index, td) => {
         let cell_mm = parseInt($(td)[0].innerText);
         if((cell_mm > mm) && which == "from") {
            $(td)[0].innerText = '';
         } else if((cell_mm < mm) && which == "to") {
            $(td)[0].innerText = '';
         }
      });
   }

   if(which == "date") {
      // $($targetPB.find('.year-header i')).removeAttr('style');
      let pbid = $targetPB[0].id,
          target_id = '#' + pbid.split('_')[0],
          $target = $(target_id),
          min_fullDate = '', min_year = '', min_month = '',
          max_fullDate = '', max_year = '', max_month = '',
          pb_year = $targetPB.find('.year-header span')[0].innerText;
      // console.log(min_fullDate)
      // console.log(max_fullDate)
      if($target.data('dsMin') != undefined && $target.data('dsMax') != undefined) {
         min_fullDate = $target.data('dsMin'),
         min_year = min_fullDate.toString().substr(0,4),
         min_month = min_fullDate.toString().substr(4,2),
         max_fullDate = $target.data('dsMax'),
         max_year = max_fullDate.toString().substr(0,4),
         max_month = max_fullDate.toString().substr(4,2);
      } else if($target.data('dsMin') != undefined) {
         min_fullDate = $target.data('dsMin'),
         min_year = min_fullDate.toString().substr(0,4),
         min_month = min_fullDate.toString().substr(4,2);
      } else if($target.data('dsMin') != undefined) {
         max_fullDate = $target.data('dsMax'),
         max_year = max_fullDate.toString().substr(0,4),
         max_month = max_fullDate.toString().substr(4,2);
      }
      
      // let left_check = '',
      //     right_check = '';
      let cell_month = '';
      $.each($targetPB.find('.month-body td'), (index, cell) => {
         cell_month = (parseInt(cell.innerText) < 10 ? '0' : '') + cell.innerText;
         // console.log(pb_year + cell_month);
         // console.log(min_year + min_month)
         // console.log(max_year + max_month)
         if(min_fullDate != undefined && parseInt(pb_year + cell_month ) < parseInt(min_year + min_month) ) cell.innerText = '';
         if(max_fullDate != undefined && parseInt(pb_year + cell_month ) > parseInt(max_year + max_month) ) cell.innerText = '';
      });
   }
}
const popupMonth_Template = () => {
   let html = [],
       body = '';
   body +=
       "<div class='month-body'>" +
         "<table></table>" +
      "</div>";
   html.body = body;
   return html;
}


// date-data-render or init
const popupYear_render = ($targetPB, direction) => {
   let center_year = parseInt($targetPB.find('.year-body td')[4].innerText),
       current_year = $targetPB.find('.date-tb-title div')[0].innerText.replace(/[^0-9]/g,"");

   if(direction == 'left') {
      center_year -= 9;
   } else {
      center_year += 9;
   }

   if(center_year < 5) center_year = 5;

   $targetPB.find('.year-body table tbody').remove();

   let start_year = center_year - 4,
   $table_year = $targetPB.find('.year-body table');
   
   let row = null;
   row = $table_year[0].insertRow();
   for(var i=0; i<9; i++) {
      cell = row.insertCell();
      cell.innerHTML = start_year + i;
      if(cell.innerHTML == current_year) $(cell).addClass('selected');
      if((i+1)%3 == 0 && (i+1) != 9) row = $table_year[0].insertRow();
   }

   popupYearScope_UX($targetPB);
   popupYear_CellAction($targetPB);

};
const popupYear_Init = ($targetPB) => {
   let current_year = $targetPB.find('.date-tb-title div')[0].innerText.replace(/[^0-9]/g,""),
       $table_year = $targetPB.find('.year-body table'),
       start_year = current_year - 4;
   $targetPB.find('.year-header span').text(current_year);
   
   let row = null;
   row = $table_year[0].insertRow();
   for(var i=0; i<9; i++) {
      cell = row.insertCell();
      cell.innerHTML = start_year + i;
      if((i+1)%3 == 0 && (i+1)!=9) row = $table_year[0].insertRow();
   }

   let tdList = $targetPB.find('.year-body td');
   $.each(tdList, (index, item) => {
      if(item.innerHTML == current_year) $(item).addClass('selected');
   });
}

const popupYear_Template = () => {
   let html = [],
       header = '',
       body = '';
   body += 
      "<div class='year-body'>" +
         "<table></table>" +
      "</div>";
   header +=
      "<div class='year-header'>" +
            '<div><i class="fa fa-angle-left"></i></div>' +
            '<div><span></span></div>' +
            '<div><i class="fa fa-angle-right"></i></div>' +
      "</div>";
      
   html.header = header; 
   html.body = body;
         
   return html;
}

const htmlPopupBox = ($target, $targetPB) => {
   if($target[0].dataset.dsIsPopup == 'false') {
      //headerViewRender
      let dateHeader = 
         "<div class='date-header'>" +
         "<div class='date-title'>" +
         "<span></span>" +
         "</div>" +
         "<div class='date-subtitle'>" +
         "<span></span>" +
         "</div>" +
         "</div>";
      
      $targetPB.find('.popup-header')
      .append(dateHeader);

      //bodyViewRender
      let dateBody = 
         "<div class='date-component-spinner'>" +
         "<div class='ic-express-np'>" +
         "<div><i class='fa fa-angle-left'></i></div>" +
         "<div><i class='fa fa-angle-right'></i></div>" +
         "</div>" +
         "<div class='date-basic'>" +
         "<div class='date-tb-title'>" +
         "<div></div>&nbsp" +
         "<div></div>" +
         "</div>" +
         "<table class='date-tb'>" +
         "<tr></tr>"
         "</table>" +
         "</div>" +
         "</div>";

      $targetPB.find('.popup-body')
      .append(dateBody);

      buildCalendar($targetPB);

      $targetPB.find('.fa-angle-left').unbind('click').bind('click', (event) => {
         reDate($targetPB);
         prevCalendar($targetPB);
         periodPickerScope_UX($targetPB);
         datepickerScope_UX($target, $targetPB);
      });
      $targetPB.find('.fa-angle-right').unbind('click').bind('click', (event) => {
         reDate($targetPB);
         nextCalendar($targetPB);
         periodPickerScope_UX($targetPB);
         datepickerScope_UX($target, $targetPB);
      });
      
      let tx_cancel = '취소',
          tx_check = '설정';
      if($targetPB.hasClass('en')) {
         tx_cancel = 'cancel',
         tx_check = 'check';
      }

      // Popup - footer
      row = "<div><a id=" + $target[0].id + "-close href='#close'>" + tx_cancel + "</a></div>";
      $targetPB.find('.popup-set-tb').append(row);

      row = "<div><a id=" + $target[0].id + "-check href='#check'>" + tx_check + "</a></div>";
      $targetPB.find('.popup-set-tb').append(row);
   }
}
const reDate = ($targetPB) => {
   let $current_YM = $targetPB.find('.date-tb-title div'),
       current_year = $current_YM[0].innerText.replace(/[^0-9]/g,""),
       current_month = $current_YM[1].innerText.replace(/월/g,"").replace(/\./g,"");
   if($targetPB.is('.en')) {
      let month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      // console.log(current_month);
      current_month = month.indexOf(current_month) + 1;
      // console.log(current_month);
   }
   
   let has_year = today.getFullYear() + '',
       has_month = (today.getMonth() + 1)  + '';
   if(has_year + has_month != current_year + current_month) {
      // console.log("다르다")
      // console.log(has_year + has_month + ' : ' + current_year + current_month)
      let popup_id = $targetPB[0].id;
      today = new Date(current_year, current_month-1);
      // if(popup_id.indexOf('from') != -1) {
      //    today = new Date(current_year, current_month-1);
      // } else if(popup_id.indexOf('to') != -1) {
      //    today = new Date(current_year, current_month-1);
      // }   
   }
}
const basicModal = ($target) => {
   target_id = '#' + $target[0].id + '_pb';
   if($target.data('dsIsPopup') == false && $(target_id).length == 0) {
      if($target.data('dsLanguage') == null) {
         $target.data('dsLanguage', 'ko');
      }
      // console.log($target.data('dsLanguage'));
      $('<div class="popupBox" id=' + $target[0].id + '_pb></div>').appendTo("body");
      $('#' + $target[0].id + '_pb').addClass($target.data('dsLanguage'));
      // console.log("popupBox created!!");

      $(target_id)
      .append('<div class="overlay"></div>')
      .append('<div class="popup"></div>')
      .children('.popup')
      .append('<div class="popup-content"></div>')
      .children('.popup-content')
      .append('<div class="popup-header"></div>') // text : popup-hearder
      .append('<div class="popup-body"></div>') // text : popup-body
      .append('<div class="popup-footer"></div>')
      .children('.popup-footer')
      .append('<div class="popup-set-tb"></div>');

      // console.log('layout, popup created in popupBox!!');

   }

   $(target_id).removeClass('popup-off');
};