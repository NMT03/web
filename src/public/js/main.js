// CLICK -> SUMMON SIDE BAR
function set_side_bar() {
  let sidebar = document.getElementById("header__hideSidebar");
  let button = document.getElementById("header__sidebar__button");
  let attr = sidebar.style.visibility;

  if (attr != "visible") {
    document.getElementById("header__hideSidebar").style.visibility = "visible";
    button.style.opacity = "0.5";
  } else {
    document.getElementById("header__hideSidebar").style.visibility = "hidden";
    button.style.opacity = "1";
  }
}

// SEARCH_BAR
function set_search_bar() {
  let search_bar = document.getElementById("search--bar");
  let style = window.getComputedStyle(search_bar);
  let animation = style.animationName;
  search_bar.style.display = "flex";

  if (animation == "fade-out") {
    search_bar.style.animationName = "fade-in";
  } else if (animation == "fade-in") {
    search_bar.style.animationName = "fade-out";
  } else {
    search_bar.style.animationName = "fade-in";
  }
}

// CHỈNH SỬA THÔNG TIN
function show_updateInfoDiv(type) {
  //Hàm tạo bảng
  let e = document.getElementById("updateInfoDiv__hideBlock");
  let block = null;
  if (e.style.display == "none") {
    e.style.display = "flex";
  } else {
    if (e.style.display == "flex") {
      e.style.display = "none";
    } else {
      e.style.display = "flex";
    }
  }

  let block1 = document.getElementById("updateInfoDiv__hideBlock__pic");
  let block2 = document.getElementById("updateInfoDiv__hideBlock__information");

  if (type == 0) {
    block1.style.display = "block";
    block2.style.display = "none";
  } else {
    block1.style.display = "none";
    block2.style.display = "block";
  }
}

function cancelUpdate(type) {
  //Hàm reset
  if (type == 0) {
    var formBlock = document.getElementById("updateInfoDiv__hideBlock__pic");
  } else {
    var formBlock = document.getElementById(
      "updateInfoDiv__hideBlock__information"
    );
  }

  let listInput = formBlock.getElementsByClassName("updateInfoInput");
  for (let i = 0; i < listInput.length; i++) {
    if (listInput[i].type != "checkbox") {
      listInput[i].value = "";
    } else {
      listInput[i].checked = false;
    }
  }
}
function createDate() {
  // Đặt ngày bắt đầu YYYY-MM-DD
  let input = "2023-08-28";
  const startDate = new Date(input);
  let dayInWeek = startDate.getDay();
  if (dayInWeek > 1) {
    startDate.setDate(startDate.getDate() - (startDate.getDay() - 1));
  } else {
    if (dayInWeek == 0) {
      startDate.setDate(startDate.getDate() - (startDate.getDay() - 7));
    }
  }

  // Lấy ngày hiện tại
  var _currentDate = new Date();

  // Tính số tuần kể từ ngày bắt đầu
  var weekNumber =
    Math.floor((_currentDate - startDate) / (7 * 24 * 60 * 60 * 1000)) + 1;

  // Định dạng kiểu DD/MM/YYYY
  var day = _currentDate.getDate();
  var month = _currentDate.getMonth() + 1;
  var year = _currentDate.getFullYear();
  const formattedDate = `${day < 10 ? `0${day}` : day}/${
    month < 10 ? `0${month}` : month
  }/${year}`;

  // Cập nhật số tuần, ngày
  document.getElementById("week-number").textContent = "Tuần " + weekNumber;
  document.getElementById("current-date").textContent = ", " + formattedDate;

  let addWeekElement = document.getElementsByClassName("add__week-number");
  for (let i = 0; i < addWeekElement.length; i++) {
    addWeekElement[i].textContent = weekNumber;
  }

  let addYearElement = document.getElementsByClassName("add__year-number");
  for (let i = 0; i < addYearElement.length; i++) {
    addYearElement[i].textContent = year;
  }
}