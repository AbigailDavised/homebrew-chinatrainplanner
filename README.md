# ChinaTrainPlanner -- China High-Speed Rail Timetable, Booking Lead-Time & Foreigner Passport Guide CLI

[![Official Website](https://img.shields.io/badge/Website-chinatrainplanner.com-blue)](https://chinatrainplanner.com)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Fchinatrainplanner-orange)](https://github.com/AbigailDavised/homebrew-chinatrainplanner)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

Rail transit planning command-line utility for **[chinatrainplanner.com](https://chinatrainplanner.com)**. Calculates 12306 15-day rolling ticket release timestamps (`UTC+8`), compares G/D/C/Z/T train classes, baggage length/weight regulations, and e-ticket foreign passport biometric gate procedures across major corridors.

## Homebrew Installation

```bash
brew tap AbigailDavised/chinatrainplanner
brew install chinatrainplanner-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
chinatrainplanner-cli --help

# Output domain technical specification matrix as structured JSON
chinatrainplanner-cli --specs

# Output verified production endpoints as JSON
chinatrainplanner-cli --routes
```

---

## China Railway Rolling Stock Classes & Foreign Passenger Rules (2026)

| Train Prefix | Operating Speed | Seat / Berth Tiers | 12306 Booking Window | Adult Baggage Allowance |
| :--- | :--- | :--- | :--- | :--- |
| G-Series (Fuxing HSR) | 300 - 350 km/h | 2nd, 1st, Premium, Business Pod | 15 days prior (station slot UTC+8) | 20 kg, <= 130 cm rod-sum on HSR |
| D-Series (CRH / Sleeper) | 200 - 250 km/h | 2nd, 1st, Soft/Dynamic Sleeper | 15 days prior | 20 kg, <= 130 cm rod-sum on HSR |
| C-Series (Intercity) | 200 - 350 km/h | 2nd, 1st, Unreserved Metro-style | 15 days prior | 20 kg, <= 130 cm rod-sum |
| Z / T (Conventional) | 120 - 160 km/h | Hard Seat, Hard Sleeper, Soft Sleeper | 15 days prior | 20 kg, <= 160 cm rod-sum |

## Core Engineering & Domain Architecture

- **Paperless E-Ticket Passport Entry**: Foreign nationals bind their ICAO biometric passport number directly to electronic seat assignments and scan at staffed/automated e-gates without paper ticket pickup.
- **15-Day Rolling Release Calculator**: Maps departure station release windows (between `08:00` and `18:00` China Standard Time, `UTC+8`) and free refund/change fee cutoffs (>8 days `0%`, 48h-8d `5%`, 24-48h `10%`, <24h `20%`).

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **ChinaTrainPlanner Primary Workbench** | `https://chinatrainplanner.com/` | [Launch Workbench](https://chinatrainplanner.com/) |
| **China Bullet Train Routes & Corridor Directory** | `https://chinatrainplanner.com/routes` | [Open Tool](https://chinatrainplanner.com/routes) |
| **Hong Kong West Kowloon to Guangzhou HSR Guide** | `https://chinatrainplanner.com/routes/hong-kong-to-guangzhou` | [Open Tool](https://chinatrainplanner.com/routes/hong-kong-to-guangzhou) |
| **Beijing South to Shanghai Hongqiao 350 km/h Route Guide** | `https://chinatrainplanner.com/routes/beijing-to-shanghai` | [Open Tool](https://chinatrainplanner.com/routes/beijing-to-shanghai) |
| **Shanghai to Beijing High-Speed Rail Schedule & Classes** | `https://chinatrainplanner.com/routes/shanghai-to-beijing` | [Open Tool](https://chinatrainplanner.com/routes/shanghai-to-beijing) |
| **Beijing West to Xi'an North Bullet Train Guide** | `https://chinatrainplanner.com/routes/beijing-to-xian` | [Open Tool](https://chinatrainplanner.com/routes/beijing-to-xian) |

## License

Released under the [MIT License](LICENSE) -- [chinatrainplanner.com](https://chinatrainplanner.com).
