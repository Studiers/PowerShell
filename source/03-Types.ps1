# * 보통 자동적으로 타입이 정해지지만 우리가 강제로 타입을 정해 줄 수 도 있다 (정말 마음에 든다)

$a = 1;
[Int] $a = 1;
[Int] $a = "1";
$a = [Int] "1";
$a = [convert]::ToInt32("1");
[Int]::TryParse("123", [Ref]$a);
[Int] $a = "1z"; # Error

# * Types
# Int16
# Int32
# Int64
# UInt16
# UInt32
# UInt64
# String
# Bool
# Char
# Decimal
# DateTime
# Double
# Type
# Ref :: Like C# ref keyword
# Etc..

# * As .NET Framework
# System.Int32
# System.String
# Etc..