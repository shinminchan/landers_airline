<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<SeatDto> list = (List<SeatDto>) request.getAttribute("list");
String flightId = request.getParameter("flight_id");
List<String> selectedSeats = (List<String>) request.getAttribute("selectedSeats");

// selectedSeats가 null인 경우 초기화
if (selectedSeats == null) {
	selectedSeats = new java.util.ArrayList<>();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>좌석 선택</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="reservationcss/seat.css" rel="stylesheet">
</head>
<body>
<div class="cont" style="background-color: #f8f9fa;">
    <div class="white-layout">
        <div class="container text-center mt-5">
            <h2>항공 좌석 선택</h2>

            <form id="seatForm" action="seatselect.do" method="post">
                <div class="seat-container">
                    <% 
                        int personNum = Integer.parseInt(request.getParameter("person_num"));
                        for (int i = 0; i < list.size(); i++) {
                            SeatDto dto = list.get(i);
                            String seatName = dto.getSeat_name();
                            String seatClass = "seat";

                            if (!dto.isIs_available()) {
                                seatClass += " unavailable";
                            } else if (selectedSeats.contains(seatName)) {
                                seatClass += " selected";
                            }
                    %>
                        <div class="rounded-pill border <%= seatClass %>" onclick="toggleSeat(this, '<%= seatName %>', '<%= dto.isIs_available() %>')" data-person-num="<%= personNum %>">
                            <input type="checkbox" name="selectedSeats" value="<%= seatName %>" style="display: none;" <%= dto.isIs_available() ? "" : "disabled" %>>
                            <%= seatName %>
                        </div>
                    <% } %>
                </div>
                <input type="hidden" name="flightId" value="<%= flightId %>">
                <input type="hidden" name="person_num" value="<%= personNum %>">
                <button type="submit" class="btn btn-danger btn-submit">선택 완료</button>
            </form>
        </div>
    </div>
</div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        var selectedSeats = <%= (selectedSeats != null) ? new org.json.JSONArray(selectedSeats).toString() : "null" %>;

        function toggleSeat(seatElement, seatName, isAvailable) {
            if (isAvailable === 'false') {
                alert('이 좌석은 현재 선택할 수 없습니다.');
                return;
            }

            var checkbox = seatElement.querySelector('input[type="checkbox"]');
            var personNum = seatElement.getAttribute('data-person-num');

            // 좌석이 선택 가능하고, 선택된 좌석의 수가 personNum보다 작거나 같은 경우에만 처리
            if (isAvailable === 'true' && (selectedSeats.length < personNum || checkbox.checked)) {
                checkbox.checked = !checkbox.checked;

                // 좌석 색상 변경
                seatElement.classList.toggle('selected');

                // 선택된 좌석 정보 저장 또는 제거
                var index = selectedSeats.indexOf(seatName);
                if (index === -1) {
                    selectedSeats.push(seatName);
                } else {
                    selectedSeats.splice(index, 1);
                }
            } else {
                alert('더 이상 좌석을 선택할 수 없습니다.');
            }
        }
    </script>
</body>
</html>






