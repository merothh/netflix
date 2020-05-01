.class public Lorg/xbill/DNS/ResolverConfig;
.super Ljava/lang/Object;
.source "ResolverConfig.java"


# static fields
.field private static currentConfig:Lorg/xbill/DNS/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lorg/xbill/DNS/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->refresh()V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 38
    iput v3, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 48
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findSunJVM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_0

    .line 53
    :cond_2
    const-string/jumbo v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "Windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 56
    const-string/jumbo v1, "95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    const-string/jumbo v1, "98"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_3

    const-string/jumbo v1, "ME"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    .line 59
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->find95()V

    goto :goto_0

    .line 61
    :cond_4
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNT()V

    goto :goto_0

    .line 62
    :cond_5
    const-string/jumbo v2, "NetWare"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 63
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findNetware()V

    goto :goto_0

    .line 64
    :cond_6
    const-string/jumbo v0, "Android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 65
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findAndroid()V

    goto :goto_0

    .line 67
    :cond_7
    invoke-direct {p0}, Lorg/xbill/DNS/ResolverConfig;->findUnix()V

    goto :goto_0
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 84
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adding search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adding server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    new-array v0, v1, [Lorg/xbill/DNS/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    check-cast v0, [Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    .line 119
    :cond_1
    return-void
.end method

.method private configureNdots(I)V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 124
    iput p1, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    .line 125
    :cond_0
    return-void
.end method

.method private find95()V
    .locals 4

    .prologue
    .line 393
    const-string/jumbo v0, "winipcfg.out"

    .line 396
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "winipcfg /all /batch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 398
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 400
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findAndroid()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 434
    const-string/jumbo v1, "^\\d+(\\.\\d+){3}$"

    .line 435
    const-string/jumbo v1, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 439
    :try_start_0
    const-string/jumbo v1, "android.os.SystemProperties"

    .line 440
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 441
    const-string/jumbo v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 442
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 444
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v6, "net.dns1"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v6, "net.dns2"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string/jumbo v6, "net.dns3"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string/jumbo v6, "net.dns4"

    aput-object v6, v5, v1

    move v1, v0

    .line 446
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_2

    .line 447
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v5, v1

    aput-object v7, v0, v6

    .line 448
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    if-eqz v0, :cond_1

    const-string/jumbo v6, "^\\d+(\\.\\d+){3}$"

    .line 450
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 452
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 457
    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 458
    return-void
.end method

.method private findNT()V
    .locals 2

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "ipconfig /all"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findNetware()V
    .locals 1

    .prologue
    .line 280
    const-string/jumbo v0, "sys:/etc/resolv.cfg"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private findProperty()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    const-string/jumbo v3, "dns.server"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_0

    .line 141
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 146
    :cond_0
    const-string/jumbo v3, "dns.search"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_1

    .line 148
    new-instance v4, Ljava/util/StringTokenizer;

    const-string/jumbo v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {p0, v1, v2}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private findResolvConf(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 217
    .line 219
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 225
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    const/4 v0, -0x1

    .line 231
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 232
    const-string/jumbo v5, "nameserver"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 235
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v2

    .line 269
    :goto_1
    invoke-direct {p0, v1, v3}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->configureNdots(I)V

    .line 271
    :goto_2
    return-void

    .line 237
    :cond_1
    :try_start_2
    const-string/jumbo v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 240
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 245
    :cond_2
    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 247
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 248
    :cond_3
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    :goto_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 253
    :cond_4
    const-string/jumbo v5, "options"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 256
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 258
    const-string/jumbo v6, "ndots:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 259
    invoke-direct {p0, v4}, Lorg/xbill/DNS/ResolverConfig;->parseNdots(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 264
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 221
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private findSunJVM()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 169
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    .line 170
    const-string/jumbo v0, "sun.net.dns.ResolverConfiguration"

    .line 171
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 175
    const-string/jumbo v0, "open"

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 179
    const-string/jumbo v0, "nameservers"

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 184
    const-string/jumbo v8, "searchlist"

    invoke-virtual {v6, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v2

    .line 207
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v0

    move v0, v2

    .line 189
    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 201
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 202
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 206
    :cond_2
    invoke-direct {p0, v3, v4}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findUnix()V
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "/etc/resolv.conf"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ResolverConfig;->findResolvConf(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private findWin(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 371
    const-string/jumbo v0, "org.xbill.DNS.windows.parse.buffer"

    .line 373
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 374
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 375
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 377
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lorg/xbill/DNS/ResolverConfig;->findWin(Ljava/io/InputStream;Ljava/util/Locale;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private findWin(Ljava/io/InputStream;Ljava/util/Locale;)V
    .locals 15

    .prologue
    .line 288
    const-class v1, Lorg/xbill/DNS/ResolverConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".windows.DNSServer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    if-eqz p2, :cond_1

    .line 292
    move-object/from16 v0, p2

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 296
    :goto_0
    const-string/jumbo v2, "host_name"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string/jumbo v2, "primary_dns_suffix"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 298
    const-string/jumbo v2, "dns_suffix"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    const-string/jumbo v2, "dns_servers"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 301
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 304
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v2, 0x0

    .line 307
    const/4 v1, 0x0

    .line 308
    :cond_0
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 309
    new-instance v12, Ljava/util/StringTokenizer;

    invoke-direct {v12, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 311
    const/4 v2, 0x0

    .line 312
    const/4 v1, 0x0

    .line 313
    goto :goto_1

    .line 294
    :cond_1
    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    goto :goto_0

    .line 315
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 316
    const-string/jumbo v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 317
    const/4 v2, 0x0

    .line 318
    const/4 v1, 0x0

    .line 321
    :cond_3
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    .line 322
    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 323
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    .line 326
    :cond_4
    const/4 v11, 0x0

    :try_start_2
    invoke-static {v3, v11}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 331
    :try_start_3
    invoke-virtual {v11}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 333
    invoke-direct {p0, v3, v10}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 364
    :catch_0
    move-exception v1

    .line 366
    :goto_3
    return-void

    .line 334
    :cond_5
    invoke-virtual {v11, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    .line 335
    :goto_4
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 336
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 337
    :cond_6
    const-string/jumbo v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 339
    invoke-direct {p0, v3, v10}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const/4 v1, 0x1

    goto :goto_1

    .line 341
    :cond_7
    if-nez v1, :cond_8

    .line 342
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_a

    .line 344
    :cond_8
    :goto_5
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 345
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 346
    :cond_9
    const-string/jumbo v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 348
    invoke-direct {p0, v3, v10}, Lorg/xbill/DNS/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    .line 349
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 350
    :cond_a
    if-nez v2, :cond_b

    .line 351
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_0

    .line 353
    :cond_b
    :goto_6
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 354
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 355
    :cond_c
    const-string/jumbo v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 357
    invoke-direct {p0, v3, v9}, Lorg/xbill/DNS/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 362
    :cond_d
    invoke-direct {p0, v9, v10}, Lorg/xbill/DNS/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 328
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public static declared-synchronized getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;
    .locals 2

    .prologue
    .line 496
    const-class v0, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseNdots(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 99
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    if-ltz v0, :cond_1

    .line 103
    const-string/jumbo v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setting ndots "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static refresh()V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Lorg/xbill/DNS/ResolverConfig;

    invoke-direct {v0}, Lorg/xbill/DNS/ResolverConfig;-><init>()V

    .line 503
    const-class v1, Lorg/xbill/DNS/ResolverConfig;

    monitor-enter v1

    .line 504
    :try_start_0
    sput-object v0, Lorg/xbill/DNS/ResolverConfig;->currentConfig:Lorg/xbill/DNS/ResolverConfig;

    .line 505
    monitor-exit v1

    .line 506
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ndots()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    .line 489
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/ResolverConfig;->ndots:I

    goto :goto_0
.end method

.method public searchPath()[Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->searchlist:[Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public servers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/xbill/DNS/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
