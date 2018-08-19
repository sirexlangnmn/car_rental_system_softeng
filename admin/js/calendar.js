function goLastMonth(month, year){
				if(month == 1){
					--year;
					month = 13;
				}
				--month
				var monthstring = ""+month+"";
				var monthlength = monthstring.length;
				if(monthlength <= 1){
					monthstring = "0"+monthstring;
				}
				document.location.href = "?month="+monthstring+"&year="+year;
			}
			
			function goNextMonth(month, year){
				if(month == 12){
					++year;
					month = 0;
				}
				++month
				var monthstring = ""+month+"";
				var monthlength = monthstring.length;
				if(monthlength <= 1){
					monthstring = "0"+monthstring;
				}
				document.location.href = "?month="+monthstring+"&year="+year;
			}