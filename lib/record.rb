require "csv"

class Record
  attr_reader :row

  def initialize(filename, indexes = {})
    @filename = filename
    @indexes = indexes.to_h {|k, v| [k.to_s, v.to_s] }
    @table =
      if FileTest.exist?(filename)
        CSV.read(filename, headers: true)
      else
        CSV::Table.new([
          CSV::Row.new(indexes.keys, [], header_row: true)
        ]).tap {|t| t.delete(0) }
      end
    @row = @table.find {|row| @indexes <= row }
  end

  def update(values = {})
    return false if @row.nil?
    h = values.to_h {|k, v| [k.to_s, v.to_s] }
    @row.headers.each {|k|
      h.key?(k) && @row[k] = h[k]
    }
    true
  end

  def create(values = {})
    h = values.to_h {|k, v| [k.to_s, v.to_s] }
    @row = CSV::Row.new(
      @table.headers,
      @table.headers.map {|k|
        @indexes[k] || h[k]
      })
    @table << @row
    true
  end

  def save(values = {})
    if update(values) || create(values)
      CSV.open(@filename, "w").yield_self {|csv|
        csv << @table.headers
        @table.each {|row| csv << row }
        csv.close
      }
      self
    else
      nil
    end
  end
end
