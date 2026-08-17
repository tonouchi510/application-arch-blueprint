
-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- DROP table "public"."users";

alter table "public"."boards"
  add constraint "boards_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."users"
  ("id") on update restrict on delete restrict;

alter table "public"."circle_members"
  add constraint "circle_members_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete cascade;

alter table "public"."circles"
  add constraint "circles_owner_id_fkey"
  foreign key ("owner_id")
  references "public"."users"
  ("id") on update restrict on delete no action;

alter table "public"."posts"
  add constraint "posts_user_id_fkey"
  foreign key ("user_id")
  references "public"."users"
  ("id") on update restrict on delete no action;
