import "./globals.css";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "HOMELAB status",
  description: "Read-only status of the homelab k3s namespace and services.",
};

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
