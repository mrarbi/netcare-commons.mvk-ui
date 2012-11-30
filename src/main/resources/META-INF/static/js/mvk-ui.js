var MVK = {
		
	GLOBAL : (function() {
		var my = {};
		
		my.init = function(params) {
			var that = this;
			this.params = params;
			this.initHelpIconListener(that);
		};
		
		my.initHelpIconListener = function(my) {
			
			$('.title-help-text').mouseover(function() {
				$(this).find('img').prop('src', my.params.contextPath + my.params.resourcePath + '/images/icons/info_iconblue.png');
			});
			
			$('.title-help-text').mouseout(function() {
				$(this).find('img').prop('src', my.params.contextPath + my.params.resourcePath + '/images/icons/info_icon.png');
			});
			
			$('.title-help-text').click(function(e) {
				e.preventDefault();
				$(this).closest('.heading-container').find('div.infoBox').toggle();
			});
		}
		
		return my;
	})(),
	
	MENU : (function() {
		
		var my = {};
		
		my.initMenuState = function() {
			if ($(window).width() < 980) {
				my.hideMenu();
			} else {
				my.showMenu();
			}
		};
		
		my.initMenuToggler = function() {
			$('a.toggleMenuButton').live('click', function() {
				$('#leftMenu div.wrapper').slideToggle('fast');
			});
		};
		
		my.showMenu = function() {
			$('#leftMenu div.wrapper').show();
		}
		
		my.hideMenu = function() {
			$('#leftMenu div.wrapper').hide();
		}
		
		my.initResizer = function() {
			$(window).resize(function() {
				if ($(window).width() < 980) {
					my.hideMenu();
				} else {
					my.showMenu();
				}
			});
		};
		
		my.init = function() {
			my.initMenuState();
			my.initMenuToggler();
			my.initResizer();
		};
		
		return my;
		
	})()
		
};