import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "お問い合わせ | サークル管理アプリ",
};

export default function Contact() {
  return (
    <div className="mx-auto max-w-2xl px-6 py-16">
      <h1 className="text-3xl font-bold">お問い合わせ</h1>
      <p className="mt-6 leading-relaxed text-gray-600">
        サービスに関するご質問・不具合のご報告などは、以下のメールアドレスまで
        ご連絡ください。内容を確認のうえ、担当より返信いたします。
      </p>

      <div className="mt-8 rounded-2xl border border-black/10 p-6">
        <p className="text-sm text-gray-500">メールでのお問い合わせ</p>
        <a
          href="mailto:support@app.sample.com"
          className="mt-1 block text-lg font-semibold text-violet-700"
        >
          support@app.sample.com
        </a>
      </div>
    </div>
  );
}
