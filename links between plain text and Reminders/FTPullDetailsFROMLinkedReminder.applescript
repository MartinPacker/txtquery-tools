property pTitle : "Pull date/priority/etc from a linked Reminder.app item to the selected FT2 line"
	function(editor, options) {
		'use strict';
		var tree = editor.tree(),
		node, i,
		lstDeltaNodes = options.uuidnodes, lngNodes = lstDeltaNodes.length,
		dctDeltas, rgxKeyVal = /\\@?(\\w+)($|\\(([^\\(]))/,
		match = rgxKeyVal.exec(options.heatpattern), strHeatKey='', strHeatVal='',
		strAlertKey = options.Alerttag, strCreatedKey=options.createdtag, dteAlert, varValue, strURL,
		strLinkLabel=options.linklabel, oSmallTime, strText, rgxLink, strPattern, strUpdated, strLabel,
		strUrlScheme='x-apple-reminder:\\/\\/', oMatch;

		//drop any leading @ from the optional key names
		if (strAlertKey[0] === '@') {strAlertKey = strAlertKey.substr(1);}
		if (strCreatedKey[0] === '@') {strCreatedKey = strCreatedKey.substr(1);}
		if (match !== null) {strHeatKey = match[1];}

		// get a reference to the reminders plugin if the link label is computed
		if (strLinkLabel.charAt(0)=='{') oSmallTime=require(options.pluginPath);
		
		tree.beginUpdates();
		for (i=0; i < lngNodes; i++) {
			dctDeltas = lstDeltaNodes[i];
			node = tree.nodeForID(dctDeltas.id);

			varValue=dctDeltas.created;
			if (dctDeltas.created) node.addTag(strCreatedKey, dctDeltas.created);

			varValue=dctDeltas.Alert;
			if (varValue) {
				if (oSmallTime) {
					strText=node.text();
					dteAlert=oSmallTime.phraseToDate(varValue);
					strLabel=oSmallTime.timeEmoji(strLinkLabel, dteAlert);
			
					strURL=strUrlScheme+dctDeltas.uuid;
					strPattern='\\\\[.*\\\\]\\\\(' + strURL + '\\\\)';
					rgxLink= new RegExp(strPattern);
					strUpdated=strText.replace(rgxLink, '[' + strLabel + '](' +strURL + ')');
					node.setText(strUpdated);
				}	
				node.addTag(strAlertKey, dctDeltas.Alert);
			}

			varValue=dctDeltas.heat;
			if (varValue) {
				match = rgxKeyVal.exec(varValue);
				if (match !== null) {
					strHeatVal = match[3];
					if (strHeatVal === undefined) {strHeatVal = '';}
				} else {strHeatVal = '';}
				node.addTag(strHeatKey, strHeatVal);
			} else node.removeTag(strHeatKey);

			varValue=dctDeltas.completed;
			if (varValue) {
				node.addTag('done', varValue);
			} else node.removeTag('done');
		}
		tree.endUpdates();
		tree.ensureClassified();
	}"
	function (editor) {
		var tree = editor.tree(),
		range = editor.selectedRange(),
		rgxLink = /\\[[^\\]]*\\]\\(x-apple-reminder:\\/\\/([A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12})\\)/,
		match=null, lstNodes = range.nodesInRange(), lstResult=[];

		lstNodes.forEach(function (node) {
			match = rgxLink.exec(node.line());
			if (match) lstResult.push([node.id, match[1]]);
		});
		return lstResult;
	}
"
					function(editor, options) {
						return editor.tree().nodeForID(options.idNode).text();
					}" with options {idNode:strId})
				function(editor, options) {
					'use strict'
					// check for plugins
					var	fnQuery = require('ft/util/queryparameter').QueryParameter,
						lstPlugins = fnQuery('pluginPaths', '').split(':'),
						lstFound = [];
						options.needed.forEach(function(dctPlugin) {
							var strFolder = '/Plug-Ins/' + dctPlugin.name + '.ftplugin/',
								lngPlugins = lstPlugins.length, strPluginPath,
								blnFound, i, oPlugin;
							for (i=0; i<lngPlugins; i++) {
								strPluginPath = lstPlugins[i];
								blnFound = (strPluginPath.indexOf(strFolder) !== -1);
								if (blnFound) {
									// check whether the plugin is up to date
									oPlugin = require(strPluginPath);
									if (oPlugin.version >= dctPlugin.version) {
										lstFound.push(strPluginPath);
									} else {
										lstFound.push(oPlugin.version);
									}
									break;
								}
							}
							if (!blnFound) {lstFound.push(null);}
						});
					return lstFound;
				}" with options {needed:plstPlugins})