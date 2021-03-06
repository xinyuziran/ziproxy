DROP TABLE IF EXISTS `accessLog`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;

CREATE TABLE `accessLog20120629` (
  `id` int(11) NOT NULL default '0',
  `accessTime` datetime default NULL,
  `usec` mediumtext,
  `username` varchar(100) default NULL,
  `dip` varchar(64) default NULL,
  `proxytype` varchar(20) default NULL,
  `orilength` mediumtext,
  `ziplength` mediumtext,
  `requestMethod` varchar(10) default NULL,
  `url` varchar(512) default NULL,
  `userAgent` varchar(256) default NULL,
  `appAgent` varchar(64) default NULL,
  `dport` int(11) default NULL,
  `ip` varchar(64) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `user_settings` (
  `f_dip` int(11) default NULL,
  `f_dport` int(11),
  `f_key` varchar(20) NOT NULL,
  `f_value` text default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET character_set_client = @saved_cs_client;

