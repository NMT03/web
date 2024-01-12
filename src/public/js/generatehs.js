var ho = ["Nguyễn ", "Trần ", "Mai ", "Lê ", "Tào ", "Đặng ", "Huỳnh "];
var dem = ["Thị ", "Minh ", "Thanh ", "Thế ", "Ngọc "];
var ten = ["Hào", "Nhi", "Ngọc", "Khang", "Hạnh", "Hằng"];
for (let i = 1; i <= 30; i++) {
  let index = i < 10 ? "0" + i : i;
  let name =
    ho[Math.floor(Math.random() * ho.length)] +
    dem[Math.floor(Math.random() * dem.length)] +
    ten[Math.floor(Math.random() * ten.length)];
  console.log(name);
  let string =
    '<p class="body-center__content--p_element"><span id="STT">' +
    index +
    '</span>: <a id="student--name" href="" style="color: rgb(70, 166, 201)">' +
    name +
    "</a></p>";
  document
    .getElementById("class--students")
    .getElementsByClassName("body-center__content--listblock")[0]
    .insertAdjacentHTML("beforeend", string);
}
