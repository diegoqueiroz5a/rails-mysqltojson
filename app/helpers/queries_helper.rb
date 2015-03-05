module QueriesHelper
  def format_query(query)
    con = Mysql.new BI_DATABASE_CREDENTIALS["host"], BI_DATABASE_CREDENTIALS["user"], BI_DATABASE_CREDENTIALS["pass"], BI_DATABASE_CREDENTIALS["database"]
    begin
      rs = con.query @query.query
    rescue => ex
      return {error: ex.message}
    end
    n_rows = rs.num_rows
    result = []
    n_rows.times do
      begin
        result.push(@query.format % rs.fetch_row)
      rescue => ex
        return {error: ex.message}
      end  
    end
    @query.preppend + result.join(@query.separator) + @query.append
  end
end
