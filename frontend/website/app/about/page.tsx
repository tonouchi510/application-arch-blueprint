import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "サービスについて | サークル管理アプリ",
};

const roles = [
  {
    name: "フリープラン",
    description: "サークルへの参加、掲示板の閲覧・投稿など基本機能を無料で利用できます。",
  },
  {
    name: "プレミアムプラン",
    description: "フリープランの機能に加えて、サークルの作成・オーナー運営ができます。",
  },
];

export default function About() {
  return (
    <div className="mx-auto max-w-3xl px-6 py-16">
      <h1 className="text-3xl font-bold">サービスについて</h1>
      <p className="mt-6 leading-relaxed text-gray-600">
        サークル管理アプリは、サークル・部活・同好会といった小さなコミュニティの運営を
        支えるためのアプリです。メンバーの管理やお知らせのやりとりをアプリひとつに
        まとめることで、運営メンバーの負担を減らし、活動そのものに集中できる環境を
        目指しています。
      </p>

      <h2 className="mt-12 text-xl font-bold">できること</h2>
      <ul className="mt-4 list-disc space-y-2 pl-5 text-gray-600">
        <li>サークルの作成・情報編集</li>
        <li>メンバーの参加・退会、オーナー権限の委譲</li>
        <li>サークルごとの掲示板でのやりとり</li>
        <li>掲示板作成など各種操作のメンバーへの権限付与</li>
      </ul>

      <h2 className="mt-12 text-xl font-bold">ご利用プラン</h2>
      <div className="mt-4 grid gap-4 sm:grid-cols-2">
        {roles.map((role) => (
          <div key={role.name} className="rounded-2xl border border-black/10 p-6">
            <h3 className="font-semibold text-violet-700">{role.name}</h3>
            <p className="mt-2 text-sm text-gray-600">{role.description}</p>
          </div>
        ))}
      </div>
    </div>
  );
}
