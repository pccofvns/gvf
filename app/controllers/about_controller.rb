class AboutController < ApplicationController

  def people
  	@governingCouncil = [
  		{"id":"1","name":"Balram Nandwani", "position":"Chairman, GVF","team":"Energy", "contact":{"email":"balram.nandwani@gmail.com"}},
  		{"id":"2","name":"Aniruddha Rajput", "position":"Member, Governing Council", "team":"Administration","contact":{"email":"adrajput@gmail.com"}},
  		{"id":"3","name":"Raj Nehru", "position":"Member, Governing Council; Co-ordinator, Skill Development", "team":"Skill Development", "contact":{"email":"rajnehru33@gmail.com"}},
  		{"id":"4","name":"Sumit Kumar", "position":"Member, Governing Council; Coordinator, Energy Sector Reforms", "team":"Operations", "contact":{"email":"parkash.sumit@gmail.com"}},
  		{"id":"5","name":"Tilak Chandna", "position":"Member, Governing Council", "team":"Public Finance", "contact":{"email":"tilak_chandna2003@yahoo.com"}},
  		{"id":"6","name":"Bajrang Lal Bagra", "position":"Invited Member, Governing Council","team":"", "contact":{"email":""}},
  		{"id":"7","name":"Chandra Wadhwa", "position":"Invited Member, Governing Council", "team":"", "contact":{"email":""}},
  		{"id":"8","name":"Dr. Omkar Rai", "position":"Invited Member, Governing Council", "team":"", "contact":{"email":""}}
  	]
  	@advisors = [
  		{"id":"9","name":"Prof.(Dr.) BK Kuthiala", "position":"Advisor - Education Reforms", "team":"Education", "contact":{"mobile":"", "email":"kuthialabk@gmail.com"}},
  		{"id":"10","name":"Dr. Yogender Malik", "position":"Advisor - Public Health, B3P (also Advisor to Haryana CM)", "team":"Public health", "contact":{"email":"dryogendermalik@gmail.com"}}
  	]

  	@members = [
		{"id":"11","name":"Alok Gupta", "position":"Coordinator, Agriculture and Rural Development","team": "Agriculture", "contact":{"email":""}},
		{"id":"12","name":"Asst. Prof. Amit Soni", "position":"Economist, GVF", "team":"", "contact":{"email":"amitsoni.du@gmail.com"}},
		{"id":"13","name":"Anupam Pathak", "position":"Chief Statistician", "team":"Education", "contact":{"email":"pathakanupam24@gmail.com"}},
		{"id":"14","name":"Bharat Goel", "position":"Chief Administrative Officer; Coordinator, Environment Protection", "team":"Operations", "contact":{"email":"goelbharat89@gmail.com"}},
		{"id":"15","name":"Dr. Dayashankar Maurya", "position":"Adjunct Fellow", "team":"Public Health", "contact":{"email":""}},
		{"id":"16","name":"Lokesh Sharma", "position":"Coordinator, Governance & Capacity Building", "team":"Administration", "contact":{"email":""}},
		{"id":"17","name":"Dr. Malini Nagulapalli", "position":"Coordinator, Research & Publications; Public Health", "team":"Public Health", "contact":{"email":"malini.nagulapalli@gmail.com"}},
		{"id":"18","name":"Dr. Mohit Srivastava", "position":"Chief Mathematician", "team":"", "contact":{"email":""}},
		{"id":"19","name":"Prof.(Dr.) Mukul Asher", "position":"Director, Public Policy", "team":"Administration", "contact":{"email":"mukul.asher@gmail.com"}},
		{"id":"20","name":"Dr. Naveen Suneja", "position":"Coordinator, Public Health (Haryana)", "team":"Public Health", "contact":{"email":""}},
		{"id":"21","name":"Praveen Mittal", "position":"Coordinator, Urban Development", "team":"Urban Development", "contact":{"email":"pmittal134@gmail.com"}},
		{"id":"22","name":"Preeti Bhardwaj", "position":"Coordinator, Women Empowerment", "team":"", "contact":{"email":""}},
		{"id":"23","name":"Dr. Ramakridhnan", "position":"Adjunct Senior Fellow", "team":"Public Health", "contact":{"email":""}},
		{"id":"24","name":"Rishabh Gupta", "position":"Coordinator - MSME", "team":"Industry", "contact":{"email":""}},
		{"id":"25","name":"Rohini Aggarwal", "position":"Coordinator, Public Financial Management", "team":"Public Finance", "contact":{"email":""}},
		{"id":"26","name":"Sulagna Chattopadhyay", "position":"Coordinator, Legislative Reforms", "team":"", "contact":{"email":""}},
		{"id":"27","name":"Sumit Shetty", "position":"Coordinator, Startups & Innovations", "team":"", "contact":{"email":""}},
		{"id":"28","name":"Vijay Vats", "position":"Coordinator, Social Affirmative Action", "team":"", "contact":{"email":"vijayvatschd@gmail.com"}},
		{"id":"29","name":"Vijender Ji", "position":"Administrator- Co-Ops", "team":"Operations", "contact":{"email":"vijendergvf@gmail.com"}},
		{"id":"30","name":"Vikas Kapoor", "position":"Coordinator, Heavy Industry", "team":"Industry", "contact":{"email":"kapoorvikas76@gmail.com"}}
	]

	@researchers = [
		{"id":"31","name":"Pradip Bhandari", "position":"Associate Reseacher", "team":"", "contact":{"email":"pradipb91@gmail.com"}},
		{"id":"32","name":"Ragini Suman", "position":"Associate Reseacher", "team":"", "contact":{"email":""}}
	]

	@interns = [
		{"id":"33","name":"Anita Vidhi", "position":"Intern", "team":"Skill Development", "contact":{"email":""}}
	]
  end

end
