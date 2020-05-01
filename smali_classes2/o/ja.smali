.class Lo/ja;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lo/ja;->e()V

    .line 97
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/WiredConnection;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 98
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/WifiConnection;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 99
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v1, Lcom/netflix/cl/model/context/MobileConnection;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lo/ja;->d:Z

    .line 104
    iput-boolean v0, p0, Lo/ja;->e:Z

    .line 105
    iput-boolean v0, p0, Lo/ja;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "nf_log_cl"

    const-string v1, "handleConnectivityChange started"

    .line 27
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "connectivity"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    const-string p1, "Connectivity manager is gone! Connectivity is lost!"

    .line 31
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lo/ja;->d()V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Connectivity manager exist, but no active connection! Connectivity is lost!"

    .line 38
    invoke-static {v0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0}, Lo/ja;->d()V

    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_6

    const/16 v3, 0x9

    if-eq p1, v3, :cond_2

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 52
    :cond_2
    iput-boolean v2, p0, Lo/ja;->d:Z

    .line 53
    iput-boolean v2, p0, Lo/ja;->e:Z

    .line 54
    iput-boolean v1, p0, Lo/ja;->c:Z

    if-eqz v1, :cond_3

    .line 56
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/WiredConnection;

    invoke-direct {v0}, Lcom/netflix/cl/model/context/WiredConnection;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    goto :goto_0

    .line 58
    :cond_3
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WiredConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 60
    :goto_0
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WifiConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 61
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/MobileConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    goto :goto_3

    .line 64
    :cond_4
    iput-boolean v1, p0, Lo/ja;->d:Z

    .line 65
    iput-boolean v2, p0, Lo/ja;->e:Z

    .line 66
    iput-boolean v2, p0, Lo/ja;->c:Z

    if-eqz v1, :cond_5

    .line 68
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/WifiConnection;

    invoke-direct {v0}, Lcom/netflix/cl/model/context/WifiConnection;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    goto :goto_1

    .line 70
    :cond_5
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WifiConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 72
    :goto_1
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WiredConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 73
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/MobileConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    goto :goto_3

    .line 77
    :cond_6
    iput-boolean v2, p0, Lo/ja;->d:Z

    .line 78
    iput-boolean v1, p0, Lo/ja;->e:Z

    .line 79
    iput-boolean v2, p0, Lo/ja;->c:Z

    if-eqz v1, :cond_7

    .line 81
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/context/MobileConnection;

    invoke-direct {v0}, Lcom/netflix/cl/model/context/MobileConnection;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    goto :goto_2

    .line 83
    :cond_7
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/MobileConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 85
    :goto_2
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WiredConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 86
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v0, Lcom/netflix/cl/model/context/WifiConnection;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    :goto_3
    return-void
.end method
