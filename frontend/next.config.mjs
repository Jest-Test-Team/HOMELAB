/** @type {import('next').NextConfig} */
const nextConfig = {
  // Static export: the Rust `dashboard` binary serves ./out as plain files.
  output: "export",
  // The backend serves /api/status; never bundle a base URL.
  trailingSlash: false,
  images: { unoptimized: true },
  reactStrictMode: true,
};
export default nextConfig;
