\restrict hasura
SET transaction_timeout = 0;
SET check_function_bodies = false;
INSERT INTO public.boards (uuid, circle_uuid, owner_id, topic, status, created_at, updated_at) VALUES ('11111111-1111-1111-1111-200000000001', '11111111-1111-1111-1111-111111111111', 'wM10vEtqTYWBlK07f4qrcUZ4jBhD', '次回のオフ会について', 0, '2026-08-17 14:53:33.279847+00', '2026-08-17 14:53:33.279847+00');
INSERT INTO public.boards (uuid, circle_uuid, owner_id, topic, status, created_at, updated_at) VALUES ('33333333-3333-3333-3333-200000000001', '33333333-3333-3333-3333-333333333333', 'uBxl06WPVjYtLd3Xvtku6xLjxd3i', 'もくもく会ルール', 1, '2026-08-17 14:53:33.279847+00', '2026-08-17 14:53:33.279847+00');
INSERT INTO public.posts (uuid, board_uuid, user_id, content, created_at, updated_at) VALUES ('11111111-1111-1111-1111-300000000001', '11111111-1111-1111-1111-200000000001', 'wM10vEtqTYWBlK07f4qrcUZ4jBhD', '次回は今週末の土曜13時から集会所で行います！', '2026-08-17 14:53:33.279847+00', '2026-08-17 14:53:33.279847+00');
INSERT INTO public.posts (uuid, board_uuid, user_id, content, created_at, updated_at) VALUES ('11111111-1111-1111-1111-300000000002', '11111111-1111-1111-1111-200000000001', '9zTE2K2AF5toQAcNc1xrLQ9DpgCb', '参加します！カタンを持っていきますね', '2026-08-17 14:53:33.279847+00', '2026-08-17 14:53:33.279847+00');
\unrestrict hasura
