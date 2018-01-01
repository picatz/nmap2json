require "json"
require "active_support/all"
require "nmap2json/version"

module Nmap2json
  def self.parse_xml(file, save: false)
    j = Hash.from_xml(IO.binread(file)).to_json
    IO.binwrite(save, j) if save
    return j
  end
end
