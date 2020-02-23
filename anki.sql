PRAGMA foreign_keys=OFF;

BEGIN TRANSACTION;

CREATE TABLE col (
    id              integer primary key,
    crt             integer not null,
    mod             integer not null,
    scm             integer not null,
    ver             integer not null,
    dty             integer not null,
    usn             integer not null,
    ls              integer not null,
    conf            text not null,
    models          text not null,
    decks           text not null,
    dconf           text not null,
    tags            text not null
);

INSERT INTO col VALUES(1,1578110400,1578171069407,1578171069405,11,0,0,0,
    '{"activeDecks": [1], "curDeck": 1, "newSpread": 0, "collapseTime": 1200, "timeLim": 0, "estTimes": true, "dueCounts": true, "curModel": "1578171069405", "nextPos": 1, "sortType": "noteFld", "sortBackwards": false, "addToCur": true, "dayLearnFirst": false, "newBury": true}',
    '{"1578170379751": {"sortf": 0, "did": 1578170359311, "latexPre": "\\documentclass[12pt]{article}\n\\special{papersize=3in,5in}\n\\usepackage[utf8]{inputenc}\n\\usepackage{amssymb,amsmath}\n\\pagestyle{empty}\n\\setlength{\\parindent}{0in}\n\\begin{document}\n", "latexPost": "\\end{document}", "mod": 1578171024, "usn": -1, "vers": [], "type": 0, "css": ".card {\n  background-color: white;\n  color: #444;\n  font: 18px/1.5 -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\";\n  text-align: left;\n}\n\n.chinese {\n  font-size: 48px;\n}\n\n.part-of-speech {\n  font-size: 12px;\n}\n\n.sentence {\n  font-size: 24px;\n}\n", "name": "Chinese in Steps", "flds": [{"name": "index", "ord": 0, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "audio", "ord": 1, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "chinese", "ord": 2, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "pinyin", "ord": 3, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "meaning", "ord": 4, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "part-of-speech", "ord": 5, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "sentence", "ord": 6, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "sentence-audio", "ord": 7, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "sentence-pinyin", "ord": 8, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}, {"name": "sentence-meaning", "ord": 9, "sticky": false, "rtl": false, "font": "Arial", "size": 20, "media": []}], "tmpls": [{"name": "Chinese in Steps", "ord": 0, "qfmt": "<div class=\"chinese\">{{chinese}}</div>\n<div class=\"pinyin\"><br></div>\n<div class=\"meaning\"><br></div>\n<div class=\"part-of-speech\"><br></div>\n<hr>\n<div class=\"sentence\">{{sentence}}</div>", "afmt": "<div class=\"chinese\">{{chinese}}</div>\n<div>{{pinyin}}</div>\n<div>{{meaning}}</div>\n<div class=\"part-of-speech\">{{part-of-speech}}</div>\n<div class=\"audio\">{{audio}}</div>\n<hr>\n<div class=\"sentence\">{{sentence}}</div>\n<div>{{sentence-pinyin}}</div>\n<div>{{sentence-meaning}}</div>\n<div class=\"sentence-audio\">{{sentence-audio}}</div>", "did": null, "bqfmt": "", "bafmt": ""}], "tags": ["chinese-in-steps"], "id": "1578170379751", "req": [[0, "any", [1, 5]]]}}',
    '{"1": {"newToday": [0, 0], "revToday": [0, 0], "lrnToday": [0, 0], "timeToday": [0, 0], "conf": 1, "usn": 0, "desc": "", "dyn": 0, "collapsed": false, "extendNew": 10, "extendRev": 50, "id": 1, "name": "Default", "mod": 1578171069}, "1578170359311": {"newToday": [0, 0], "revToday": [0, 0], "lrnToday": [0, 0], "timeToday": [0, 0], "conf": 1, "usn": -1, "desc": "", "dyn": 0, "collapsed": false, "extendNew": 10, "extendRev": 50, "name": "Chinese in Steps", "id": 1578170359311, "mod": 1578170359}}',
    '{"1": {"name": "Default", "new": {"delays": [1, 10], "ints": [1, 4, 7], "initialFactor": 2500, "separate": true, "order": 1, "perDay": 20, "bury": false}, "lapse": {"delays": [10], "mult": 0, "minInt": 1, "leechFails": 8, "leechAction": 0}, "rev": {"perDay": 200, "ease4": 1.3, "fuzz": 0.05, "minSpace": 1, "ivlFct": 1, "maxIvl": 36500, "bury": false, "hardFactor": 1.2}, "maxTaken": 60, "timer": 0, "autoplay": true, "replayq": true, "mod": 0, "usn": 0, "id": 1}}',
    '{}');

CREATE TABLE notes (
    id              integer primary key,   /* 0 */
    guid            text not null,         /* 1 */
    mid             integer not null,      /* 2 */
    mod             integer not null,      /* 3 */
    usn             integer not null,      /* 4 */
    tags            text not null,         /* 5 */
    flds            text not null,         /* 6 */
    sfld            integer not null,      /* 7 */
    csum            integer not null,      /* 8 */
    flags           integer not null,      /* 9 */
    data            text not null          /* 10 */
);

CREATE TABLE cards (
    id              integer primary key,   /* 0 */
    nid             integer not null,      /* 1 */
    did             integer not null,      /* 2 */
    ord             integer not null,      /* 3 */
    mod             integer not null,      /* 4 */
    usn             integer not null,      /* 5 */
    type            integer not null,      /* 6 */
    queue           integer not null,      /* 7 */
    due             integer not null,      /* 8 */
    ivl             integer not null,      /* 9 */
    factor          integer not null,      /* 10 */
    reps            integer not null,      /* 11 */
    lapses          integer not null,      /* 12 */
    left            integer not null,      /* 13 */
    odue            integer not null,      /* 14 */
    odid            integer not null,      /* 15 */
    flags           integer not null,      /* 16 */
    data            text not null          /* 17 */
);

CREATE TABLE revlog (
    id              integer primary key,
    cid             integer not null,
    usn             integer not null,
    ease            integer not null,
    ivl             integer not null,
    lastIvl         integer not null,
    factor          integer not null,
    time            integer not null,
    type            integer not null
);

CREATE TABLE graves (
    usn             integer not null,
    oid             integer not null,
    type            integer not null
);

ANALYZE sqlite_master;

INSERT INTO sqlite_stat1 VALUES('col',NULL,'1');

CREATE INDEX ix_notes_usn on notes (usn);
CREATE INDEX ix_cards_usn on cards (usn);
CREATE INDEX ix_revlog_usn on revlog (usn);
CREATE INDEX ix_cards_nid on cards (nid);
CREATE INDEX ix_cards_sched on cards (did, queue, due);
CREATE INDEX ix_revlog_cid on revlog (cid);
CREATE INDEX ix_notes_csum on notes (csum);

COMMIT;
