export default function Footer() {
  return (
    <footer className="border-t border-black/10">
      <div className="mx-auto max-w-5xl px-6 py-8 text-sm text-gray-500">
        <p>&copy; {new Date().getFullYear()} サークル管理アプリ</p>
      </div>
    </footer>
  );
}
