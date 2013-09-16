/// <reference path="jquery-2.0.0.js" />
this.configuration = {
    changeTheme: function (obj) {
        var theme = $(obj).prop('title');
        utilities.setCookie('CurrentTheme', theme);
        location.reload();
    },
    changeLanguage: function (obj) {
        var lang = $(obj).prop('lang');
        utilities.setCookie('Lang', lang);
        location.reload();
    }
};
this.utilities = {
    getKey: function (query) {
        if (!query) return "";
        var key = query;
        if (query.indexOf("=") > -1) key = query.substring(0, query.indexOf("="));
        return key;
    },
    getValue: function (query, key) {
        if (!query) return "";
        if (!key) key = "";
        var value = false;
        if (query.indexOf(key + "=") > -1) value = query.substring(query.indexOf(key + "=") + (key.length + 1));
        return value;
    },
    Request: function (parameter) {
        var p = escape(unescape(parameter));
        var regex = new RegExp("[?&]" + p + "(?:=([^&]*))?", "i");
        var match = regex.exec(window.location.search);
        var value = null;
        if (match != null) {
            value = match[1];
        }
        return value;
    },
    // cookie. //
    setCookie: function (name, value, expires, path, domain, secure) {
        expires = expires * 60 * 60 * 24 * 1000;
        var today = new Date();
        var expires_date = new Date(today.getTime() + (expires));
        var cookieString = name + "=" + escape(value) +
           ((expires) ? ";expires=" + expires_date.toGMTString() : "") +
           ((path) ? ";path=" + path : ";path=/") +
           ((domain) ? ";domain=" + domain : "") +
           ((secure) ? ";secure" : "");
        document.cookie = cookieString;
    },
    getCookie: function (name) {
        var dc = document.cookie;
        var prefix = name + "=";
        var begin = dc.indexOf("; " + prefix);
        if (begin == -1) {
            begin = dc.indexOf(prefix);
            if (begin != 0) return null;
        } else {
            begin += 2;
        }
        var end = document.cookie.indexOf(";", begin);
        if (end == -1) {
            end = dc.length;
        }
        return unescape(dc.substring(begin + prefix.length, end));
    }
};