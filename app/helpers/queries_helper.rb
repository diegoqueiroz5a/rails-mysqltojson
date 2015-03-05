module QueriesHelper
  def format_query(query)
    con = Mysql.new ENV["SQLTOJSON_DB_HOST"], ENV["SQLTOJSON_DB_USER"], ENV["SQLTOJSON_DB_PASS"], ENV["SQLTOJSON_DB_NAME"]
    rs = con.query @query.query
    n_rows = rs.num_rows
    result = []
    n_rows.times do
      result.push(@query.format % rs.fetch_row)
    end
    result = @query.preppend + result.join(@query.separator) + @query.append
  end
end
