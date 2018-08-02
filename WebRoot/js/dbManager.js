$(function(){
	searchText();
	addButton();
	editButton();
	dropButton();
	submitButton();
	tab();
});
var menuButton = function(){
	$('#mb').menubutton({    
	    iconCls: 'icon-edit',    
	    menu: '#mm'   
	}); 
};
var searchText = function(){
	$('#searchText').textbox({  
	    buttonText:'查询',    
	    iconCls:'searchbox_button', 
	    iconAlign:'left',
	    height:'30'
	})
};
var addButton = function(){
	$('#add').linkbutton({    
	    iconCls: 'icon-search'   
	});  
}
var editButton = function(){
	$('#edit').linkbutton({    
	    iconCls: 'icon-search'   
	});  
}
var dropButton = function(){
	$('#drop').linkbutton({    
	    iconCls: 'icon-search'   
	});  
}
var submitButton = function(){
	$('#submit').linkbutton({    
	    iconCls: 'icon-search'   
	});  
}
var tab = function(){
	$('#tab').tabs({    
	    border:false,   
	    tabWidth:'60',
	    onSelect:function(title){    
	    }    
	});  
}