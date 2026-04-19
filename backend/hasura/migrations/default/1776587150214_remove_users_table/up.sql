
alter table "public"."posts" drop constraint "posts_user_id_fkey";

alter table "public"."circles" drop constraint "circles_owner_id_fkey";

alter table "public"."circle_members" drop constraint "circle_members_user_id_fkey";

alter table "public"."boards" drop constraint "boards_owner_id_fkey";

DROP table "public"."users";
