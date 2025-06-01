SET check_function_bodies = false;
CREATE FUNCTION public.set_current_timestamp_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$;
CREATE TABLE public.boards (
    uuid uuid NOT NULL,
    circle_uuid uuid NOT NULL,
    owner_id bpchar NOT NULL,
    topic text NOT NULL,
    status smallint NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE public.circle_members (
    uuid uuid NOT NULL,
    circle_uuid uuid NOT NULL,
    user_id bpchar NOT NULL,
    joined_date date NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE public.circle_permissions (
    circle_uuid uuid NOT NULL,
    permission_board_creation boolean NOT NULL,
    permission_self_join boolean NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE public.circles (
    uuid uuid NOT NULL,
    owner_id bpchar NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE public.posts (
    uuid uuid NOT NULL,
    board_uuid uuid NOT NULL,
    user_id bpchar NOT NULL,
    content text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
CREATE TABLE public.users (
    id bpchar NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    email_verified boolean NOT NULL,
    photo_url text,
    phone_number text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (uuid);
ALTER TABLE ONLY public.circle_members
    ADD CONSTRAINT circle_members_circle_uuid_user_id_key UNIQUE (circle_uuid, user_id);
ALTER TABLE ONLY public.circle_members
    ADD CONSTRAINT circle_members_pkey PRIMARY KEY (uuid);
ALTER TABLE ONLY public.circle_permissions
    ADD CONSTRAINT circle_permissions_pkey PRIMARY KEY (circle_uuid);
ALTER TABLE ONLY public.circles
    ADD CONSTRAINT circles_pkey PRIMARY KEY (uuid);
ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (uuid);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
CREATE TRIGGER set_public_boards_updated_at BEFORE UPDATE ON public.boards FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_boards_updated_at ON public.boards IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_circle_members_updated_at BEFORE UPDATE ON public.circle_members FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_circle_members_updated_at ON public.circle_members IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_circle_permissions_updated_at BEFORE UPDATE ON public.circle_permissions FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_circle_permissions_updated_at ON public.circle_permissions IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_circles_updated_at BEFORE UPDATE ON public.circles FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_circles_updated_at ON public.circles IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_posts_updated_at BEFORE UPDATE ON public.posts FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_posts_updated_at ON public.posts IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_users_updated_at BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_users_updated_at ON public.users IS 'trigger to set value of column "updated_at" to current timestamp on row update';
ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_circle_uuid_fkey FOREIGN KEY (circle_uuid) REFERENCES public.circles(uuid) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.circle_members
    ADD CONSTRAINT circle_members_circle_uuid_fkey FOREIGN KEY (circle_uuid) REFERENCES public.circles(uuid) ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE ONLY public.circle_members
    ADD CONSTRAINT circle_members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.circle_permissions
    ADD CONSTRAINT circle_permissions_circle_uuid_fkey FOREIGN KEY (circle_uuid) REFERENCES public.circles(uuid) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.circles
    ADD CONSTRAINT circles_owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.users(id) ON UPDATE RESTRICT;
ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_board_uuid_fkey FOREIGN KEY (board_uuid) REFERENCES public.boards(uuid) ON UPDATE RESTRICT ON DELETE CASCADE;
ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT;
