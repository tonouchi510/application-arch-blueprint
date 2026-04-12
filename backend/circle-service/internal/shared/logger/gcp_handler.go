package logger

import (
	"context"
	"io"
	"log/slog"
)

// GCPHandler は Google Cloud Logging 用のカスタムハンドラー
// slog の level フィールドを severity に変換する
type GCPHandler struct {
	handler slog.Handler
}

// NewGCPHandler は GCP Cloud Logging 互換のハンドラーを作成する
func NewGCPHandler(w io.Writer, opts *slog.HandlerOptions) *GCPHandler {
	if opts == nil {
		opts = &slog.HandlerOptions{}
	}

	h := slog.NewJSONHandler(w, &slog.HandlerOptions{
		Level:       opts.Level,
		AddSource:   opts.AddSource,
		ReplaceAttr: gcpReplaceAttr(opts.ReplaceAttr),
	})

	return &GCPHandler{handler: h}
}

// gcpReplaceAttr は level を severity に変換する
func gcpReplaceAttr(next func([]string, slog.Attr) slog.Attr) func([]string, slog.Attr) slog.Attr {
	return func(groups []string, a slog.Attr) slog.Attr {
		// level を severity に変換
		if a.Key == slog.LevelKey {
			a.Key = "severity"
			// GCP Cloud Logging の severity レベルに変換
			level := a.Value.Any().(slog.Level)
			switch {
			case level < slog.LevelInfo:
				a.Value = slog.StringValue("DEBUG")
			case level < slog.LevelWarn:
				a.Value = slog.StringValue("INFO")
			case level < slog.LevelError:
				a.Value = slog.StringValue("WARNING")
			default:
				a.Value = slog.StringValue("ERROR")
			}
		}

		// 既存の ReplaceAttr があれば適用
		if next != nil {
			return next(groups, a)
		}
		return a
	}
}

func (h *GCPHandler) Enabled(ctx context.Context, level slog.Level) bool {
	return h.handler.Enabled(ctx, level)
}

func (h *GCPHandler) Handle(ctx context.Context, r slog.Record) error {
	return h.handler.Handle(ctx, r)
}

func (h *GCPHandler) WithAttrs(attrs []slog.Attr) slog.Handler {
	return &GCPHandler{handler: h.handler.WithAttrs(attrs)}
}

func (h *GCPHandler) WithGroup(name string) slog.Handler {
	return &GCPHandler{handler: h.handler.WithGroup(name)}
}
