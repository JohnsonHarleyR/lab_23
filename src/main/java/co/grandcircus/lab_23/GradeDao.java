package co.grandcircus.lab_23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class GradeDao {
	@Autowired
	private JdbcTemplate template;
	
	public List<Grade> findAll() {
		return template.query("SELECT * FROM grade" ,
				new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public Grade findById(Long id) {
		Grade match = template.queryForObject("SELECT * FROM grade WHERE id = ?",
				new BeanPropertyRowMapper<>(Grade.class), id);
		return match;
	}
	
	public void update(Grade grade) {
		String sql = "UPDATE grade SET name = ?, type = ?, score = ?,"
				+ "total = ? WHERE id = ?";
		// Use .update for SQL INSERT, UPDATE, and DELETE
		// All the parameters after the first specify values to fill in the ?s in the SQL.
		template.update(sql, grade.getName(), grade.getType(),
				grade.getScore(), grade.getId());
	}
	
	public void create(Grade grade) {
		String sql = "INSERT INTO grade (name, type, score, total) "
				+ "VALUES (?, ?, ?, ?)";
		template.update(sql, grade.getName(), grade.getType(),
				grade.getScore(), grade.getTotal());
	}
	
	public void delete(Long id) {
		String sql = "DELETE FROM grade WHERE id = ?";
		template.update(sql, id);
	}
	
}
