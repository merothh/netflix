.class public Lo/aiV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aiV$TaskDescription;,
        Lo/aiV$StateListAnimator;,
        Lo/aiV$Activity;
    }
.end annotation


# instance fields
.field private a:Lo/ajc;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/upnp/UpnpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/aiR;

.field private d:Lo/aiV$TaskDescription;

.field private e:Lo/aiW;


# direct methods
.method public constructor <init>(Lo/aiR;Lo/aiW;Lo/ajc;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new UpnpClient with policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpnpClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lo/aiV;->c:Lo/aiR;

    .line 67
    iput-object p2, p0, Lo/aiV;->e:Lo/aiW;

    .line 68
    iput-object p3, p0, Lo/aiV;->a:Lo/ajc;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/aiV;->b:Ljava/util/List;

    .line 72
    sget-object p1, Lo/aiX;->a:Lo/aiX;

    iput-object p1, p0, Lo/aiV;->d:Lo/aiV$TaskDescription;

    return-void
.end method

.method static synthetic a(Lo/aiV;)Lo/aiV$TaskDescription;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/aiV;->d:Lo/aiV$TaskDescription;

    return-object p0
.end method

.method private a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V
    .locals 1

    .line 181
    new-instance v0, Lo/aiV$3;

    invoke-direct {v0, p0, p1, p3}, Lo/aiV$3;-><init>(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V

    invoke-virtual {p0, p1, p2, v0}, Lo/aiV;->a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$StateListAnimator;)V

    return-void
.end method

.method static synthetic b(Lo/aiV;Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/aiV;->d(Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lo/aiV;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/aiV;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/aiV;->c(Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V

    return-void
.end method

.method static synthetic c(Lo/aiV;)Lo/aiR;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/aiV;->c:Lo/aiR;

    return-object p0
.end method

.method private c(Lcom/netflix/ssdp/SsdpDevice;Lo/aiV$Activity;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/aiV;->d(Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lo/aiV;->b:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lo/aiV;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p2, p1}, Lo/aiV$Activity;->d(Lcom/netflix/upnp/UpnpDevice;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 235
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/netflix/upnp/UpnpDevice;
    .locals 4

    .line 218
    iget-object v0, p0, Lo/aiV;->b:Ljava/util/List;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lo/aiV;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/upnp/UpnpDevice;

    .line 220
    invoke-virtual {v2}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    monitor-exit v0

    return-object v2

    .line 224
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d([Ljava/lang/String;Lo/aiV$Activity;)Lo/aiR$Application;
    .locals 1

    .line 241
    new-instance v0, Lo/aiV$2;

    invoke-direct {v0, p0, p1, p2}, Lo/aiV$2;-><init>(Lo/aiV;[Ljava/lang/String;Lo/aiV$Activity;)V

    return-object v0
.end method

.method static synthetic e(Lo/aiV;Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/aiV;->a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$Activity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "UpnpClient"

    const-string v1, "Clearing device list"

    .line 112
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lo/aiV;->b:Ljava/util/List;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lo/aiV;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    iget-object v1, p0, Lo/aiV;->c:Lo/aiR;

    invoke-virtual {v1}, Lo/aiR;->d()V

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/netflix/ssdp/SsdpDevice;[Ljava/lang/String;Lo/aiV$StateListAnimator;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Getting device info - device: %s, headers: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpnpClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->b()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lo/aiV;->e:Lo/aiW;

    new-instance v8, Lo/aiV$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, v0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lo/aiV$1;-><init>(Lo/aiV;Ljava/lang/String;Lo/aiV$StateListAnimator;[Ljava/lang/String;Lcom/netflix/ssdp/SsdpDevice;)V

    invoke-interface {v1, v0, v8}, Lo/aiW;->b(Ljava/lang/String;Lo/aiW$TaskDescription;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "UpnpClient"

    const-string v1, "Stopping discovery"

    .line 102
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lo/aiV;->c:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->b()V

    return-void
.end method

.method public e(Ljava/lang/String;[Ljava/lang/String;Lo/aiV$Activity;Lo/aiY;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Starting discovery for service type: %s, headers to track: %s"

    .line 96
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpnpClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lo/aiV;->c:Lo/aiR;

    invoke-direct {p0, p2, p3}, Lo/aiV;->d([Ljava/lang/String;Lo/aiV$Activity;)Lo/aiR$Application;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p4}, Lo/aiR;->c(Ljava/lang/String;Lo/aiR$Application;Lo/aiY;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lo/aiV;->c:Lo/aiR;

    invoke-virtual {v0}, Lo/aiR;->c()Z

    move-result v0

    return v0
.end method
