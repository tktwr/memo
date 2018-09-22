function f_get_date() {
  var dt = new Date();
  var yyyy = dt.getFullYear();
  var mm = dt.getMonth() + 1;
  var dd = dt.getDate();
  if (mm < 10) { mm = '0' + mm; }
  if (dd < 10) { dd = '0' + dd; }
  var weekstr = new Array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat');
  return yyyy + '/' + mm + '/' + dd + ' (' + weekstr[dt.getDay()] + ')';
}

function f_get_time() {
  var dt = new Date();
  var hh = dt.getHours();
  var mm = dt.getMinutes();
  var ss = dt.getSeconds();
  if (hh < 10) { hh = '0' + hh; }
  if (mm < 10) { mm = '0' + mm; }
  if (ss < 10) { ss = '0' + ss; }
  return hh + ':' + mm + ':' + ss;
}

function f_to_jpyear(year) {
  var nenngo = "西暦";
  var jpyear = year;
  if (year > 1988) {
    nenngo = "平成";
    jpyear = year - 1988;
  } else if (year > 1925) {
    nenngo = "昭和";
    jpyear = year - 1925;
  } else if (year > 1911) {
    nenngo = "大正";
    jpyear = year - 1911;
  } else if (year > 1867) {
    nenngo = "明治";
    jpyear = year - 1867;
  }
  return nenngo + jpyear;
}

function js_clock() {
  var o = document.getElementById('clock');
  o.innerHTML = ""

  var D = new Date();
  var year = D.getFullYear();
  o.innerHTML += f_to_jpyear(year);
  o.innerHTML += '<br>'

  o.innerHTML += f_get_date();
  o.innerHTML += '<br>'
  o.innerHTML += f_get_time();
}

function js_init() {
  js_clock();
  setInterval('js_clock()', 1000);
}
