class AboutController < ApplicationController

  def people
  	@list = [
				{"name":"Raj Nehru", "position":"Senior Manager-Industry and Skill Development", "team":"Skill Development", "contact":{"mobile":"9560193003", "email":"Rajnehru33@gmail.com"}},
				{"name":"Vikas Kapoor", "position":"Trustee - GVF, Administrator - Industry", "team":"Industry", "contact":{"mobile":"9818098600", "email":"Kapoorvikas76@gmail.com"}},
				{"name":"Alok Gupta", "position":"Manager- Agriculture and Rural Development","team": "Agriculture", "contact":{"mobile":"9811210081", "email":"Surabhi3s@yahoo.in"}},
				{"name":"Balram Nandwani", "position":"Trustee - GVF Chief- Power Sector","team":"Energy", "contact":{"mobile":"9812041700", "email":"Balram.nandwani@gmail.com"}},
				{"name":"Tilak Chandna", "position":"Head – Public Finance Budget", "team":"Public Finance", "contact":{"mobile":"9810848542", "email":"Tilak_chandna2003@yahoo.com"}},
				{"name":"Parveen Mittal", "position":"Trustee -GVF, Chief – Urban Local Bodies", "team":"Urban Development", "contact":{"mobile":"9310044360", "email":"Pmittal134@gmail.com"}},
				{"name":"Sumit Kumar", "position":"Chief- Public Relations", "team":"Operations", "contact":{"mobile":"8802792362", "email":"Parkash.sumit@gmail.com"}},
				{"name":"Vijay Vats", "position":"Trustee -GVF, Administrator- Nomadic Tribes", "team":"Environment", "contact":{"mobile":"9416160185", "email":"vijayvatschd@gmail.com"}},
				{"name":"Narmadeshwar Ji", "position":"Head- Legislative Reforms and Planning", "team":"Administration", "contact":{"mobile":"9313360354", "email":""}},
				{"name":"Naveen Suneja", "position":"Co-Head-Public Health Matters", "team":"Public Health", "contact":{"mobile":"9812034925", "email":""}},
				{"name":"Vijender Ji", "position":"Administrator- Co-Ops", "team":"Operations", "contact":{"mobile":"8750308559", "email":"vijendergvf@gmail.com"}},
				{"name":"Pradip Bhandari", "position":"Administrator- PSU Reforms", "team":"Administration", "contact":{"mobile":"9008419232", "email":"Pradipb91@gmail.com"}},
				{"name":"Anupam Pathak", "position":"Coordinator- Academic Research", "team":"Education", "contact":{"mobile":"9999654356", "email":"Pathakanupam24@gmail.com"}},
				{"name":"Mohit Srivastava", "position":"Coordinator- Academic Research", "team":"Education", "contact":{"mobile":"9555946565", "email":""}},
				{"name":"Amit soni", "position":"Head- Research", "team":"Education", "contact":{"mobile":"9871266497", "email":"Amitsoni.du@gmail.com"}},
				{"name":"Rishabh Gupta", "position":"Trustee-GVF Administrator-MSME", "team":"Industry", "contact":{"mobile":"9896674743", "email":""}},
				{"name":"Bharat Goel", "position":"Administrative In charge- Administration", "team":"Administration, Environment", "contact":{"mobile":"8826911832", "email":"Goelbharat89@gmail.com"}},
				{"name":"Malini Nagulapalli", "position":"Coordinator- Research & Publications", "team":"Public Health", "contact":{"mobile":"9899998963", "email":"Malini.nagulapalli@gmail.com"}},
				{"name":"Mukul Asher", "position":"Director- Public Policy", "team":"Administration", "contact":{"mobile":"", "email":"Mukul.asher@gmail.com"}},
				{"name":"Aniruddha Rajput", "position":"Trustee - GVF Mentor, Advisor & Guru", "team":"Administration","contact":{"mobile":"9810704531", "email":"adrajput@gmail.com"}},
				{"name":"Bhupinder Singh", "position":"Trustee GVF Advisory Body", "team":"Administration", "contact":{"mobile":"8198053700", "email":"Bhupi620@gmail.com"}},
				{"name":"Yogender Malik", "position":"Advisor- Public Health", "team":"Public health", "contact":{"mobile":"9996777559", "email":"Dryogendermalik@gmail.com"}},
				{"name":"BK Kuthiala", "position":"Advisor- Education", "team":"Education", "contact":{"mobile":"", "email":"kuthialabk@gmail.com"}},
				{"name":"Suresh chand Mittal", "position":"Pioneer In Chief and Mentor", "team":"Administration", "contact":{"mobile":"8750047562", "email":"Pmittal134@gmail.com"}}
			]
  end

end
