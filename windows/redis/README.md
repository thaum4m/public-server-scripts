# Redis on Windows
Redis 3.0.503 standalone 64-bit client and server are included here.

If you require an alternate version, one approach is to use NuGet.

## Getting Redis using NuGet
To download Redis using Nuget follow these steps:

1. Download NuGet at:
_https://dist.nuget.org/win-x86-commandline/latest/nuget.exe_

(Other versions are available at _https://www.nuget.org/downloads_)

2. Place _nuget.exe_ in _%userprofile%/bin_
(Create the _bin_ directory in your home directory if it doesn't already exist)

3. On the Windows command line (_cmd.exe_) type:
```
cd %userprofile%/bin
```

4. Enter the follow command to download Redis 64-bit ver. 3.0.503:
```
nuget install Redis-64 -version 3.0.503
```

The above command will install Redis binaries at:
_%userprofile%/bin/redis-64.3.0.503/tools/_
