.class public Lcom/netflix/mediaclient/service/net/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_dns"

.field private static sInstance:Lcom/netflix/mediaclient/service/net/DnsManager;


# instance fields
.field private mDnsServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/net/DnsManager;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/net/DnsManager;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/net/DnsManager;->sInstance:Lcom/netflix/mediaclient/service/net/DnsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/netflix/mediaclient/service/net/DnsManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netflix/mediaclient/service/net/DnsManager;->sInstance:Lcom/netflix/mediaclient/service/net/DnsManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cacheFlush()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->getDnsList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/net/DnsManager;->mDnsServers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameServers()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/DnsManager;->mDnsServers:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->getDnsList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/net/DnsManager;->mDnsServers:[Ljava/lang/String;

    .line 69
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v1, p0, Lcom/netflix/mediaclient/service/net/DnsManager;->mDnsServers:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 71
    const-string/jumbo v4, "nf_dns"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/DnsManager;->mDnsServers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
