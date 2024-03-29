package com.landers.airline.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landers.airline.dao.ReservationDao;
import com.landers.airline.dto.FlightinfoDto;
import com.landers.airline.dto.ScheduleDto;
import com.landers.airline.dto.SeatDto;
import com.landers.airline.dto.TicketDto;
import com.landers.airline.dto.flightParam;


@Repository
public class ReservationDaoImpl implements ReservationDao {

	@Autowired
	SqlSession session;

	@Override
	public int schedule(ScheduleDto dto) {
		return session.insert("reservation.schedule", dto);
	}

	@Override
	public List<FlightinfoDto> flightlist(FlightinfoDto dto) {
		return session.selectList("reservation.search", dto);
	}

	@Override
	public List<SeatDto> seatlist(int flight_id) {
		return session.selectList("reservation.seatlist", flight_id);
	}
	
	@Override
	public int seatselect(@Param("seatName") String seatName, @Param("flight_id") int flight_id) {
	    return session.update("seatselect", Map.of("seatName", seatName, "flight_id", flight_id));
	}
	

	@Override
	public FlightinfoDto flightInfo(int flight_id) {
		return session.selectOne("reservation.flightInfo",flight_id);
	}

	@Override
	public int ticket(TicketDto dto) {
		return session.insert("reservation.ticket",dto);
	}

	@Override
	public TicketDto ticketinfo(int flight_id) {
		return session.selectOne("reservation.ticketinfo", flight_id);
	}

	@Override
	public int emptynumcount(flightParam param) {
		return session.update("reservation.emptynum", param);
	}

	@Override
	public String departure(int flight_id) {
		return session.selectOne("reservation.departure", flight_id);
	}

	@Override
	public int reservationCal(String reservationCalendar, String user_id) {
		return session.insert("reservation.reservationCal", Map.of("reservationCalendar", reservationCalendar, "user_id", user_id));
	}

	
	
	

}
