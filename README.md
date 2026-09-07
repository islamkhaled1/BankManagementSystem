# 🏦 Bank Management System

A C++ console-based banking application with user management, client management, transaction handling, and permission-based access control.

## 📋 Features

### 👥 User Management
- **Login System** with username/password authentication
- **Default Admin Account** (Username: `Admin`, Password: `1234`)
- **Permission-Based Access Control**
- Add, Delete, Update, and Find Users
- Admin user cannot be deleted

### 💰 Client Management
- Add, Delete, Update, and Find Clients
- View all clients with detailed information
- Client data includes: Account Number, PIN, Name, Phone, and Balance

### 💵 Transactions
- **Deposit** money into client accounts
- **Withdraw** money with balance validation
- **View Total Balances** for all clients

### 🔐 Permissions System

The system supports 7 different permission levels:

1. List Clients
2. Add New Client
3. Delete Client
4. Update Client
5. Find Client
6. Transactions
7. Manage Users

**Full Access:** Admin has all permissions (`-1`)

## 🚀 Getting Started

### Prerequisites
- Visual Studio 2019/2022 or any compatible C++ compiler
- Windows OS (uses `system("cls")` and `system("pause>0")`)

### Installation

1. **Clone the repository**

```bash
git clone https://github.com/islamkhaled1/BankManagementSystem.git
cd BankManagementSystem
