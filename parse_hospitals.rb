require 'nokogiri'
require 'open-uri'
require 'csv'

class HospitalScraper
  def initialize(url)
    @url = url
  end

  def scrape_hospitals
    html = URI.open(@url)
    doc = Nokogiri::HTML(html)
    hospital_names = extract_hospital_names(doc)
    save_to_csv(hospital_names)
  end

  private

  def extract_hospital_names(doc)
    doc.css('div#BlinkDBContent_849210 ul li a').map(&:text)
  end

  def save_to_csv(hospital_names)
    CSV.open('hospitals.csv', 'w') do |csv|
      csv << ['ID', 'Hospital Name']
      hospital_names.each_with_index do |hospital_name, index|
        csv << [index + 1, hospital_name]
      end
    end
  end
end

url = 'https://www.hospitalsafetygrade.org/all-hospitals'
scraper = HospitalScraper.new(url)
scraper.scrape_hospitals