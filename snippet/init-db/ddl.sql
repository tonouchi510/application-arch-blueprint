-- 一時的に外部キーチェックしないように
SET CONSTRAINTS ALL DEFERRED;

-- main DBのセットアップ
drop database if exists main;
create database main;

-- 外部キーチェックするように戻す
SET CONSTRAINTS ALL IMMEDIATE;