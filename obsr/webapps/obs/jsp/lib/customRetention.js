    function verifyInput(form) {
        for (var i=0; i<form.elements.length; i++) {
            if (form.elements[i].type=='radio') {
                if (form.elements[i].value=='DAILY' && form.elements[i].checked==true) {
                    return true;
                } else if (form.elements[i].value=='WEEKLY' && form.elements[i].checked==true) {
                    return checkWeeklyCheckbox(form);
                } else if (form.elements[i].value=='MONTHLY' && form.elements[i].checked==true) {
                    return checkMonthlyType(form);
                } else if (form.elements[i].value=='QUARTERLY' && form.elements[i].checked==true) {
                    return checkQuarterlyType(form);
                } else if (form.elements[i].value=='YEARLY' && form.elements[i].checked==true) {
                    if (checkYearlyType(form)) {
                        return validateCustomDate(form);
                    }
                } else if (form.elements[i].value=='CUSTOM' && form.elements[i].checked==true) {
                    if (checkCustomType(form)) {
                        return validateCustomDate(form);
                    }
                }
            }            
        }
        return false;
    }
    
    function checkCustomType(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].type=='radio' && form.elements[i].name=='customDateType' && form.elements[i].value=='EXACT' && form.elements[i].checked==true) {
			 	return checkCustomExact(form);
            }            
            else if(form.elements[i].type=='radio' && form.elements[i].name=='customDateType' && form.elements[i].value=='WEEK_OF_MONTH' && form.elements[i].checked==true) {
			 	return checkCustomWOM(form);
            }
            else if(form.elements[i].type=='radio' && form.elements[i].name=='customDateType' && form.elements[i].value=='WEEK_OF_YEAR' && form.elements[i].checked==true) {
			 	return checkCustomWOY(form);
            }
 		}
 		return false;
    }
    
    function checkCustomWOY(form){
    	return checkCustomWOYweek(form)&&checkCustomWOYday(form);
    }
    
    function checkCustomWOYday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCWOY.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomWOYweek(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCWOY.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_WEEK_OF_YEAR_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomWOM(form){
    	return checkCustomWOMmonth(form)&&checkCustomWOMweek(form)&&checkCustomWOMday(form);
    }
    
    function checkCustomWOMday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCWOM.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomWOMweek(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCWOM.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_WEEK_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomWOMmonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCWOM.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_MONTH_OF_YEAR_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomExact(form){
    	return checkCustomExactMonth(form)&&checkCustomExactDay(form);
    }
    
    function checkCustomExactDay(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCE.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_DAY_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkCustomExactMonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objCE.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(CUSTOMIZE_MONTH_OF_YEAR_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyType(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].type=='radio' && form.elements[i].name=='yearlyDateType' && form.elements[i].value=='EXACT' && form.elements[i].checked==true) {
			 	return checkYearlyExact(form);
            }            
            else if(form.elements[i].type=='radio' && form.elements[i].name=='yearlyDateType' && form.elements[i].value=='WEEK_OF_MONTH' && form.elements[i].checked==true) {
			 	return checkYearlyWOM(form);
            }
            else if(form.elements[i].type=='radio' && form.elements[i].name=='yearlyDateType' && form.elements[i].value=='WEEK_OF_YEAR' && form.elements[i].checked==true) {
			 	return checkYearlyWOY(form);
            }
 		}
 		return false;
    }
    
    function checkYearlyWOY(form){
    	return checkYearlyWOYweek(form)&&checkYearlyWOYday(form);
    }
    
    function checkYearlyWOYday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYWOY.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyWOYweek(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYWOY.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_WEEK_OF_YEAR_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyWOM(form){
    	return checkYearlyWOMmonth(form)&&checkYearlyWOMweek(form)&&checkYearlyWOMday(form);
    }
    
    function checkYearlyWOMday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYWOM.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyWOMweek(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYWOM.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_WEEK_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyWOMmonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYWOM.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_MONTH_OF_YEAR_NOT_SELECTED);
    	return false;
    }    
    
    function checkYearlyExact(form){
    	return checkYearlyExactMonth(form)&&checkYearlyExactDay(form);
    }
    
    function checkYearlyExactDay(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYE.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_DAY_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkYearlyExactMonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objYE.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(YEARLY_MONTH_OF_YEAR_NOT_SELECTED);
    	return false;
    }
    
    function checkQuarterlyType(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].type=='radio' && form.elements[i].name=='quarterlyDateType' && form.elements[i].value=='EXACT' && form.elements[i].checked==true) {
			 	return checkQuarterlyExact(form);
            }            
            else if(form.elements[i].type=='radio' && form.elements[i].name=='quarterlyDateType' && form.elements[i].value=='WEEK_OF_MONTH' && form.elements[i].checked==true) {
			 	return checkQuarterlyWOM(form);
            }
 		}
 		return false;
    }
    
    function checkQuarterlyWOM(form){
    	return checkQuarterlyWOMmonth(form)&&checkQuarterlyWOMweek(form)&&checkQuarterlyWOMday(form);
    }
    
    function checkQuarterlyWOMday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objQWOM.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(QUARTERLY_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkQuarterlyWOMweek(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objQWOM.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(QUARTERLY_WEEK_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkQuarterlyWOMmonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objQWOM.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(QUARTERLY_MONTH_ROLE_NOT_SELECTED);
    	return false;
    }
    
    function checkQuarterlyExact(form){
    	return checkQuarterlyExactMonth(form)&&checkQuarterlyExactDay(form);
    }
    
    function checkQuarterlyExactDay(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objQE.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(QUARTERLY_DAY_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkQuarterlyExactMonth(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objQE.month') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(QUARTERLY_MONTH_ROLE_NOT_SELECTED);
    	return false;
    }
    
    function checkMonthlyType(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].type=='radio' && form.elements[i].name=='monthlyDateType' && form.elements[i].value=='EXACT' && form.elements[i].checked==true) {
			 	return checkMonthlyExact(form);
            }            
            else if(form.elements[i].type=='radio' && form.elements[i].name=='monthlyDateType' && form.elements[i].value=='WEEK_OF_MONTH' && form.elements[i].checked==true) {
			 	return checkMonthlyWOM(form);
            }
 		}
 		return false;
    }
    
    function checkMonthlyWOMweek(form){
	    for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objMWOM.week') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(MONTHLY_WEEK_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkMonthlyWOMday(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objMWOM.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(MONTHLY_DAY_OF_WEEK_NOT_SELECTED);
    	return false;
    }
    
    function checkMonthlyWOM(form){
    	return checkMonthlyWOMweek(form)&&checkMonthlyWOMday(form);
    }
    
    function checkMonthlyExact(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].name=='objME.day') {
		 		if(form.elements[i].value!=''){
		 			return true;
		 		}
            }            
 		}
 		alert(MONTHLY_DAY_OF_MONTH_NOT_SELECTED);
    	return false;
    }
    
    function checkWeeklyCheckbox(form){
    	for(var i=0; i<form.elements.length; i++) {
		 	if(form.elements[i].type=='checkbox') {
			 	if(form.elements[i].checked==true){
			 		return true;
			 	}
            }            
 		}
 		alert(WEEKLY_WEEK_OF_DAY_NOT_SELECTED);
    	return false;
    }
    
    function clearAllDaily(form){
            for(var i=0; i<form.length; i++) {
                if(form.elements[i].name=='objDaily.numbersToKeep') {form.elements[i].value="7";}
                if(form.elements[i].value=='DAILY') {
                    form.elements[i].checked=false;
                }
        }
    }
        function clearAllWeekly(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].value=='WEEKLY') {
                            form.elements[i].checked=false;
                        }
                        if(form.elements[i].type=='checkbox') {
 				form.elements[i].checked=false;
	 		}
                        if(form.elements[i].name=='objWeekly.numbersToKeep') {form.elements[i].value="7";}
 		}
 	}

 	function clearAllMonthly(form) {
	 	clearMonthlyExact(form);
	 	clearMonthlyWeekOfMonth(form);
                for(var i=0; i<form.length; i++) {
                        if(form.elements[i].value=='MONTHLY') {
                            form.elements[i].checked=false;
                        }
                        if(form.elements[i].name=='monthlyNumToKeep') {form.elements[i].value="7";}
 		}
 	}
        function clearMonthlyExact(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objME.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objME.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='EXACT' && form.elements[i].name=='monthlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearMonthlyWeekOfMonth(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objMWOM.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objMWOM.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objMWOM.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='WEEK_OF_MONTH' && form.elements[i].name=='monthlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}

        function clearAllQuarterly(form) {
	 	clearQuarterlyExact(form);
	 	clearQuarterlyWeekOfMonth(form);
                for(var i=0; i<form.length; i++) {
                        if(form.elements[i].value=='QUARTERLY') {
                            form.elements[i].checked=false;
                        }
						if(form.elements[i].name=='quarterlyNumToKeep') {form.elements[i].value="7";}
 		}
       }
       function clearQuarterlyExact(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objQE.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objQE.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].name=='objQE.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].value=='EXACT'&& form.elements[i].name=='quarterlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearQuarterlyWeekOfMonth(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objQWOM.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objQWOM.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objQWOM.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objQWOM.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='WEEK_OF_MONTH'&& form.elements[i].name=='quarterlyDateType') {
                            form.elements[i].checked=false;
                        }
 		}
 	}

        function clearAllYearly(form) {
	 	clearYearlyExact(form);
	 	clearYearlyWeekOfMonth(form);
                clearYearlyWeekOfYear(form);
                for(var i=0; i<form.length; i++) {
                        if(form.elements[i].value=='YEARLY') {
                            form.elements[i].checked=false;
                        }
                        if(form.elements[i].name=='yearlyNumToKeep') {form.elements[i].value="7";}
 		}
 	}

        function clearYearlyExact(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objYE.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYE.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYE.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='EXACT'&& form.elements[i].name=='yearlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearYearlyWeekOfMonth(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objYWOM.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYWOM.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYWOM.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYWOM.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='WEEK_OF_MONTH'&& form.elements[i].name=='yearlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearYearlyWeekOfYear(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objYWOY.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYWOY.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objYWOY.numbersToKeep') form.elements[i].value="7";
                        if(form.elements[i].value=='WEEK_OF_YEAR'&& form.elements[i].name=='yearlyDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
 	function clearAllCustom(form) {
            clearCustomExact(form);
            clearCustomWeekOfMonth(form);
            clearCustomWeekOfYear(form);
	 	for(var i=0; i<form.length; i++) {
                        if(form.elements[i].value=='CUSTOM') {
                            form.elements[i].checked=false;
                        }
                        if(form.elements[i].name=='customYear') {form.elements[i].value="2005";}
 		}
 	}
        function clearCustomExact(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objCE.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCE.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCE.year') form.elements[i].value="2005";
                        if(form.elements[i].value=='EXACT'&& form.elements[i].name=='customDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearCustomWeekOfMonth(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objCWOM.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCWOM.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCWOM.month') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCWOM.year') form.elements[i].value="2005";
                        if(form.elements[i].value=='WEEK_OF_MONTH'&& form.elements[i].name=='customDateType'){
                            form.elements[i].checked=false;
                        }
 		}
 	}
        function clearCustomWeekOfYear(form) {
	 	for(var i=0; i<form.length; i++) {
		 	if(form.elements[i].name=='objCWOY.day') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCWOY.week') form.elements[i].selectedIndex=0;
                        if(form.elements[i].name=='objCWOY.year') form.elements[i].value="2005";
                        if(form.elements[i].value=='WEEK_OF_YEAR'&& form.elements[i].name=='customDateType') {
                            form.elements[i].checked=false;
                        }
 		}
 	}

    // 2298 : 2011-01-11 Cliff Yeung added to check whether the date is valid
    function validateCustomDate(form) {
    /*
    * iMonth: 1(JAN), 2(FEB), 3(MAR)... 12(DEC)
    * iDay: 1, 2, 3... 31, 32(Last)
    * iDayOfWeek: 1(SUN), 2(MON), 3(TUE), 4(WED), 5(THU), 6(FRI), 7(SAT), 8(Weekday), 9(Weekend)
    * iWeek: 1, 2, 3... 5, 6(Last)
    * iWeekOfYear: 1, 2, 3... 53, 54(Last)
    */
        var sYear;
        var iMonth;
        var iDay;
        var iDayOfWeek;
        var iWeek;
        var iWeekOfYear;

        // Get the parameters in "Yearly - Date" field
        if (form.type[4].checked && form.yearlyDateType[0].checked) {
            sYear = "2012"; // Year 2012 is a leap year having 366 days
            iMonth = form.elements["objYE.month"].value;
            iDay = form.elements["objYE.day"].value;
        }

        // Get the parameters in "Customize - Date, Month and Week of year" field
        if (form.type[5].checked) {
            sYear = form.elements["customYear"].value;
            if (form.customDateType[0].checked) {
                iMonth = form.elements["objCE.month"].value;
                iDay = form.elements["objCE.day"].value;
            } else if (form.customDateType[1].checked) {
                iMonth = form.elements["objCWOM.month"].value;
                iWeek = form.elements["objCWOM.week"].value;
                iDayOfWeek = form.elements["objCWOM.day"].value;
            } else if (form.customDateType[2].checked) {
                iWeekOfYear = form.elements["objCWOY.week"].value;
                iDayOfWeek = form.elements["objCWOY.day"].value;
            }
        }

        // Check whether the Year is valid format in "Customize" field
        if (form.type[5].checked) {
            if (!validateDateFormat(sYear, "1", "31")) {
                alert(INVALID_DATE_FORMAT);
                return false;
            }
        }

        // Check whether the date is valid in "Yearly - Date" and "Customize - Date" fields
        // Skip checking when the variable "iDay" is the last day
        if (((form.type[4].checked && form.yearlyDateType[0].checked) 
                || (form.type[5].checked && form.customDateType[0].checked)) && iDay != 32) {
            if (!validateDate(sYear, iMonth, iDay)) {
                alert(INVALID_DATE);
                return false;
            }
        }

        // Check whether the date is valid in "Customize - Month" field
        // Skip checking when the variable "iWeek" is the last week or "iDayOfWeek" is Weekday
        // i.e. The 1st Monday in January 2011 is 2011-1-3
        // i.e. The 2nd weekday in January 2011 is 2011-1-4
        if (form.type[5].checked && form.customDateType[1].checked && iWeek != 6 && iDayOfWeek != 8) {
            // In order to align with OBM, if variable iDayOfWeek is Weekend, iDayOfWeek is changed to Saturday
            if (iDayOfWeek == 9) {
                iDayOfWeek = 7;
            }
            var iFirstDayOfMonth = (new Date(sYear, iMonth-1, 1)).getDay();//0 means Sunday, 1 means Monday and so on
            var iOffset = (iDayOfWeek - 1) - iFirstDayOfMonth;
            if (iOffset < 0) {
                iOffset = 7 + iOffset;
            }
            var idayNum = (iWeek - 1) * 7 + iOffset + 1;
            var iDaysInMonth = getDaysInMonth(sYear, iMonth);
            if (idayNum > iDaysInMonth) {
                alert(INVALID_DATE);
                return false;
            }
        }

        // Check whether the date is valid in "Customize - Week of year" field
        // Skip checking when the variable "iWeekOfYear" is the last week
        // i.e. The 1st Monday in 2011 is null
        // i.e. The 2nd Monday in 2011 is 2011-1-3
        if (form.type[5].checked && form.customDateType[2].checked && iWeekOfYear != 54) {
            var iFirstDayOfYear = (new Date(sYear, 0, 1)).getDay();//0 means Sunday, 1 means Monday and so on
            if (iWeekOfYear == 1 && iDayOfWeek < iFirstDayOfYear + 1) {
                alert(INVALID_DATE);
                return false;
            }
            var iDayNumInYear;
            if (isLeapYear(sYear)) {
                iDayNumInYear = 366;
            } else {
                iDayNumInYear = 365;
            }
            if (((iWeekOfYear - 2) * 7 + (7 - iFirstDayOfYear) + (iDayOfWeek) * 1) > iDayNumInYear) {
                alert(INVALID_DATE);
                return false;
            }
        }
        return true;	
    }