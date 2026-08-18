import Link from "next/link";

const features = [
  {
    title: "サークルを簡単に作成",
    description:
      "サークル名と説明を入力するだけで、あなたのサークルのホームができます。",
  },
  {
    title: "メンバー管理",
    description:
      "参加・退会、オーナー権限の委譲まで。最大30人までのメンバーをまとめて管理できます。",
  },
  {
    title: "掲示板でやりとり",
    description:
      "サークルごとに掲示板を作成し、連絡やイベントの相談をメンバーと共有できます。",
  },
  {
    title: "プロフィール管理",
    description: "表示名やプロフィール画像など、自分の情報はいつでも編集できます。",
  },
];

export default function Home() {
  return (
    <div>
      <section className="mx-auto max-w-5xl px-6 py-20 text-center">
        <h1 className="text-4xl font-bold tracking-tight sm:text-5xl">
          サークル運営を、
          <br className="sm:hidden" />
          もっとシンプルに。
        </h1>
        <p className="mx-auto mt-6 max-w-2xl text-lg text-gray-600">
          サークルの作成からメンバー管理、掲示板でのやりとりまで。
          サークル管理アプリは、サークル運営に必要な機能をひとつにまとめました。
        </p>
        <div className="mt-10 flex justify-center gap-4">
          <Link
            href="/about"
            className="rounded-full bg-violet-700 px-6 py-3 text-sm font-semibold text-white transition-colors hover:bg-violet-800"
          >
            サービスについて見る
          </Link>
          <Link
            href="/contact"
            className="rounded-full border border-gray-300 px-6 py-3 text-sm font-semibold text-gray-700 transition-colors hover:border-violet-700 hover:text-violet-700"
          >
            お問い合わせ
          </Link>
        </div>
      </section>

      <section className="border-t border-black/10 bg-gray-50">
        <div className="mx-auto max-w-5xl px-6 py-16">
          <h2 className="text-center text-2xl font-bold">主な機能</h2>
          <div className="mt-10 grid gap-6 sm:grid-cols-2">
            {features.map((feature) => (
              <div
                key={feature.title}
                className="rounded-2xl border border-black/10 bg-white p-6"
              >
                <h3 className="font-semibold text-violet-700">{feature.title}</h3>
                <p className="mt-2 text-sm text-gray-600">{feature.description}</p>
              </div>
            ))}
          </div>
        </div>
      </section>
    </div>
  );
}
