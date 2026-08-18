import Link from "next/link";

const navItems = [
  { href: "/", label: "ホーム" },
  { href: "/about", label: "サービスについて" },
  { href: "/contact", label: "お問い合わせ" },
];

export default function Header() {
  return (
    <header className="border-b border-black/10">
      <div className="mx-auto flex max-w-5xl items-center justify-between px-6 py-4">
        <Link href="/" className="text-lg font-bold text-violet-700">
          サークル管理アプリ
        </Link>
        <nav className="flex gap-6 text-sm font-medium text-gray-600">
          {navItems.map((item) => (
            <Link
              key={item.href}
              href={item.href}
              className="transition-colors hover:text-violet-700"
            >
              {item.label}
            </Link>
          ))}
        </nav>
      </div>
    </header>
  );
}
