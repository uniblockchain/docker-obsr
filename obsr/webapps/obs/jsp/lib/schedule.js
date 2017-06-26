    function verifyInput(form){ 
    	for(var i=0; i<form.elements.length; i++) { 
		if(form.elements[i].type=='radio') { 
			if(form.elements[i].value=='DAILY' && form.elements[i].checked==true){ 
				return checkTime(form); 
			}else if(form.elements[i].value=='WEEKLY' && form.elements[i].checked==true){
				return (checkWeeklyCheckbox(form)&&checkTime(form)); 
			}else if(form.elements[i].value=='MONTHLY' && form.elements[i].checked==true){ 
				return (checkMonthlyType(form)&&checkTime(form)); 
			}else if(form.elements[i].value=='CUSTOM' && form.elements[i].checked==true){ 
				return (checkCustomType(form)&&checkTime(form)); 
			} 
		} 
	}
	return false; 
    }

    function checkTime(form){
    	for(var i=0; i<form.elements.length; i++) {
		if(form.elements[i].type=='hidden' &&  form.elements[i].name=='fullBackup' )
	            return true;
		if(form.elements[i].type=='radio') {
		    if(form.elements[i].name=='fullBackup' && form.elements[i].value=='true' && form.elements[i].checked==true){
                     	return true;
                    }
                    else if(form.elements[i].name=='fullBackup' && form.elements[i].value=='false' && form.elements[i].checked==true){
                        return checkFullBackupHour(form);
                    }
	        }
	 }
        return false;
    }

    function checkFullBackupHour(form){
                        	for(var i=0; i<form.elements.length; i++) {
                    		 	if(form.elements[i].name=='time.duration') {
                    		 		if(form.elements[i].value!=''){
                    		 			return true;
                    		 		}
                                }
                     		}
                     		alert(SCHEDULER_TIME_STOP_HOUR);
                        	return false;
    }

    function checkCustomType(form){
        	return checkCustomYear(form)&&checkCustomMonth(form)&&checkCustomDay(form);
    }

    function checkCustomYear(form){
                    	for(var i=0; i<form.elements.length; i++) {
                		 	if(form.elements[i].name=='customSchedule.year') {
                		 		if(form.elements[i].value!=''){
                		 			return true;
                		 		}
                            }
                 		}
                 		alert(SCHEDULER_CUSTOM_YEAR_IS_EMPTY);
                    	return false;
    }

    function checkCustomMonth(form){
                    	for(var i=0; i<form.elements.length; i++) {
                		 	if(form.elements[i].name=='customSchedule.month') {
                		 		if(form.elements[i].value!=''){
                		 			return true;
                		 		}
                            }
                 		}
                 		alert(SCHEDULER_CUSTOM_MONTH_NOT_SELECTED);
                    	return false;
    }


    function checkCustomDay(form){
                    	for(var i=0; i<form.elements.length; i++) {
                		 	if(form.elements[i].name=='customSchedule.day') {
                		 		if(form.elements[i].value!=''){
                		 			return true;
                		 		}
                            }
                 		}
                 		alert(SCHEDULER_CUSTOM_DAY_NOT_SELECTED);
                    	return false;
    }

    function checkMonthlyType(form){
        	for(var i=0; i<form.elements.length; i++) {
    		 	if(form.elements[i].type=='radio' && form.elements[i].name=='monthlyDateType' && form.elements[i].value=='DATE' && form.elements[i].checked==true) {
    			 	return checkMonthlyDate(form);
                }
                else if(form.elements[i].type=='radio' && form.elements[i].name=='monthlyDateType' && form.elements[i].value=='CRITERIA' && form.elements[i].checked==true) {
    			 	return checkMonthlyOther(form);
                }
     		}
     		return false;
    }

    function checkMonthlyOther(form){
    	return checkMonthlyOccurence(form)&&checkMonthlyCriteria(form);
    }

    function checkMonthlyCriteria(form){
                	for(var i=0; i<form.elements.length; i++) {
            		 	if(form.elements[i].name=='monthSchedule.criteria') {
            		 		if(form.elements[i].value!=''){
            		 			return true;
            		 		}
                        }
             		}
             		alert(SCHEDULER_MONTHLY_DAY_OF_WEEK_NOT_SELECTED);
                	return false;
    }

    function checkMonthlyOccurence(form){
            	for(var i=0; i<form.elements.length; i++) {
        		 	if(form.elements[i].name=='monthSchedule.occurrence') {
        		 		if(form.elements[i].value!=''){
        		 			return true;
        		 		}
                    }
         		}
         		alert(SCHEDULER_MONTHLY_WEEK_OF_MONTH_NOT_SELECTED);
            	return false;
    }

    function checkMonthlyDate(form){
        	for(var i=0; i<form.elements.length; i++) {
    		 	if(form.elements[i].name=='monthSchedule.date') {
    		 		if(form.elements[i].value!=''){
    		 			return true;
    		 		}
                }
     		}
     		alert(SCHEDULER_MONTHLY_DAY_OF_MONTH_NOT_SELECTED);
        	return false;
    }


    function checkWeeklyCheckbox(form){
        	for(var i=0; i<form.elements.length; i++) {
    		 	if(form.elements[i].type=='checkbox') {
    			 	if(form.elements[i].checked==true && form.elements[i].disabled==false){
    			 		return true;
    			 	}
                }
     		}
     		alert(SCHEDULER_WEEKLY_DAY_OF_WEEK_NOT_SELECTED);
        	return false;
    }