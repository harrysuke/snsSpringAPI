/*
 * package config;
 * 
 * import javax.annotation.PreDestroy; import javax.sql.DataSource;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.context.annotation.Bean; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.jdbc.core.JdbcTemplate; import
 * org.springframework.jdbc.datasource.DriverManagerDataSource; import
 * org.springframework.web.servlet.config.annotation.EnableWebMvc; import
 * org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
 * 
 * @Configuration
 * 
 * @EnableWebMvc public class Config implements WebMvcConfigurer{ private final
 * DataSource dataSource;
 * 
 * @Autowired public Config() { DriverManagerDataSource dataSource = new
 * DriverManagerDataSource();
 * dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
 * dataSource.setUrl("jdbc:mysql://localhost:3306/tbpsns");
 * dataSource.setUsername("root"); dataSource.setPassword(""); this.dataSource =
 * dataSource; }
 * 
 * @Bean public DataSource dataSource() { return dataSource; }
 * 
 * @Bean
 * 
 * @Autowired public JdbcTemplate jdbcTemplate(DataSource dataSource) { return
 * new JdbcTemplate(dataSource); }
 * 
 * @PreDestroy public void cleanup() { try {
 * java.sql.DriverManager.deregisterDriver(java.sql.DriverManager.getDriver(
 * "jdbc:mysql://localhost:3306/tbpsns")); }catch(Exception e) {
 * System.out.println(e.getMessage()); } try {
 * com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();
 * }catch(Exception e) { System.out.println(e.getMessage()); } } }
 */