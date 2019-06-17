const rangeSlider = () => {
  let value_data = ''
  let step = ''
  let minValue, maxValue, thisValue;
  let disabled = ''

  const slider = $('.ds-ui-rangeslider')

  slider.each(function (i) {
    label = ($(slider[i]).data('label') == undefined) ? '' : $(slider[i]).data('label');
    minValue = ($(slider[i]).data('min') == undefined) ? 0 : $(slider[i]).data('min');
    maxValue = ($(slider[i]).data('max') == undefined) ? 500 : $(slider[i]).data('max');
    thisValue = ($(slider[i]).data('value') == undefined) ? 0 : $(slider[i]).data('value');
    step = ($(slider[i]).data('step') == undefined) ? '' : $(slider[i]).data('step');
    disabled = ($(slider[i]).data('disabled')==true) ? ' disabled' : '';
    value_data = $(slider[i]).data('value');

    $(slider[i]).append(
      "<span class='range-slider-title'>" + label + "</span>" +
      "<input" + disabled + " class='range-slider-range' type='range' min='" + minValue + "' max='" + maxValue + "' value='" + thisValue + "' step='" + step + "'>" +
      "<span class='range-slider-value'>0</span>"
    )
    if (disabled == ' disabled') {
      $(slider[i]).children('input').css({'background' : '#1A73E9'})
    } 
  })

  const range = $('.range-slider-range'),
    value = $('.range-slider-value')

  value.each(function () {
    var value = $(this).prev().attr('value');
    $(this).html(value);
  });

  range.on('input', function () {
    $(slider).children('input').removeClass('range-slider-active');
    $(this).addClass('range-slider-active')
    $(this).next(value).html(this.value);
  });
};