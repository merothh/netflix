.class public Lo/StorageEventListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StorageEventListener$Activity;,
        Lo/StorageEventListener$TaskDescription;,
        Lo/StorageEventListener$StateListAnimator;,
        Lo/StorageEventListener$Application;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/dial/DialDevice;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/OnObbStateChangeListener;

.field private c:Lo/StorageEventListener$Activity;

.field private d:Lo/aiV;

.field private e:Lo/TimerStat;


# direct methods
.method public constructor <init>(Lo/TimerStat;)V
    .locals 1

    .line 95
    new-instance v0, Lo/OnObbStateChangeListener;

    invoke-direct {v0}, Lo/OnObbStateChangeListener;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/StorageEventListener;-><init>(Lo/TimerStat;Lo/OnObbStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lo/TimerStat;Lo/OnObbStateChangeListener;)V
    .locals 3

    .line 84
    new-instance v0, Lo/aiV;

    new-instance v1, Lo/aiR;

    sget-object v2, Lo/aiY;->e:Lo/aiY;

    invoke-direct {v1, v2}, Lo/aiR;-><init>(Lo/aiY;)V

    new-instance v2, Lo/ajc;

    invoke-direct {v2}, Lo/ajc;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lo/aiV;-><init>(Lo/aiR;Lo/aiW;Lo/ajc;)V

    invoke-direct {p0, v0, p1, p2}, Lo/StorageEventListener;-><init>(Lo/aiV;Lo/TimerStat;Lo/OnObbStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lo/aiV;Lo/TimerStat;Lo/OnObbStateChangeListener;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new DialClient with policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lo/StorageEventListener;->d:Lo/aiV;

    .line 75
    iput-object p2, p0, Lo/StorageEventListener;->e:Lo/TimerStat;

    .line 76
    iput-object p3, p0, Lo/StorageEventListener;->b:Lo/OnObbStateChangeListener;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    .line 80
    sget-object p1, Lo/UidHealthStats;->a:Lo/UidHealthStats;

    iput-object p1, p0, Lo/StorageEventListener;->c:Lo/StorageEventListener$Activity;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 264
    invoke-direct {p0, p1, p2}, Lo/StorageEventListener;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?clientDialVer=2.1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lo/StorageEventListener;->d(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;Lo/StorageEventListener$Application;)Lo/aiV$Activity;
    .locals 1

    .line 293
    new-instance v0, Lo/StorageEventListener$1;

    invoke-direct {v0, p0, p1, p2}, Lo/StorageEventListener$1;-><init>(Lo/StorageEventListener;Ljava/lang/String;Lo/StorageEventListener$Application;)V

    return-object v0
.end method

.method private c(Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/StorageEventListener;->e(Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p2, p1}, Lo/StorageEventListener$Application;->e(Lcom/netflix/dial/DialDevice;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 287
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lo/StorageEventListener;->c(Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V

    return-void
.end method

.method static synthetic d(Lo/StorageEventListener;Ljava/lang/String;)Lcom/netflix/dial/DialDevice;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/StorageEventListener;->e(Ljava/lang/String;)Lcom/netflix/dial/DialDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo/StorageEventListener;)Lo/StorageEventListener$Activity;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/StorageEventListener;->c:Lo/StorageEventListener$Activity;

    return-object p0
.end method

.method private d(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$Application;)V
    .locals 1

    .line 224
    new-instance v0, Lo/StorageEventListener$3;

    invoke-direct {v0, p0, p1, p3}, Lo/StorageEventListener$3;-><init>(Lo/StorageEventListener;Lcom/netflix/upnp/UpnpDevice;Lo/StorageEventListener$Application;)V

    invoke-virtual {p0, p1, p2, v0}, Lo/StorageEventListener;->a(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/netflix/dial/DialDevice;
    .locals 4

    .line 270
    iget-object v0, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/dial/DialDevice;

    .line 272
    invoke-virtual {v2}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    monitor-exit v0

    return-object v2

    .line 276
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

.method static synthetic e(Lo/StorageEventListener;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/netflix/dial/DialDevice;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;)V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/StorageEventListener;->b(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lo/StorageEventListener$Application;Lo/aiY;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Starting discovery for app name: %s"

    .line 103
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lo/StorageEventListener;->d:Lo/aiV;

    const-string v1, "Application-URL"

    const-string v2, "WAKEUP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lo/StorageEventListener;->c(Ljava/lang/String;Lo/StorageEventListener$Application;)Lo/aiV$Activity;

    move-result-object p1

    const-string p2, "urn:dial-multiscreen-org:service:dial:1"

    invoke-virtual {v0, p2, v1, p1, p3}, Lo/aiV;->e(Ljava/lang/String;[Ljava/lang/String;Lo/aiV$Activity;Lo/aiY;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "DialClient"

    const-string v1, "Clearing device list"

    .line 119
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lo/StorageEventListener;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    iget-object v1, p0, Lo/StorageEventListener;->d:Lo/aiV;

    invoke-virtual {v1}, Lo/aiV;->a()V

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;Ljava/lang/Boolean;)V
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Getting device state - device: %s, appName: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialClient"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->d()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Application-URL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "No App URL header found on device"

    .line 171
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lo/StorageEventListener$TaskDescription;->c(Ljava/lang/Exception;)V

    return-void

    .line 176
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p2}, Lo/StorageEventListener;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lo/StorageEventListener;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    iget-object v1, p0, Lo/StorageEventListener;->e:Lo/TimerStat;

    new-instance v8, Lo/StorageEventListener$5;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lo/StorageEventListener$5;-><init>(Lo/StorageEventListener;Ljava/lang/Boolean;Lcom/netflix/upnp/UpnpDevice;Ljava/lang/String;Lo/StorageEventListener$TaskDescription;)V

    invoke-interface {v1, v0, v8}, Lo/TimerStat;->b(Ljava/lang/String;Lo/aiW$TaskDescription;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lo/StorageEventListener$Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lo/StorageEventListener;->a(Ljava/lang/String;Lo/StorageEventListener$Application;Lo/aiY;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lo/StorageEventListener$StateListAnimator;)V
    .locals 1

    .line 138
    invoke-direct {p0, p1, p2}, Lo/StorageEventListener;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Launching URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DialClient"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p2, p0, Lo/StorageEventListener;->e:Lo/TimerStat;

    new-instance v0, Lo/StorageEventListener$2;

    invoke-direct {v0, p0, p3, p1}, Lo/StorageEventListener$2;-><init>(Lo/StorageEventListener;Lo/StorageEventListener$StateListAnimator;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lo/TimerStat;->c(Ljava/lang/String;Lo/aiW$TaskDescription;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lo/StorageEventListener;->d:Lo/aiV;

    invoke-virtual {v0}, Lo/aiV;->e()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    const-string v0, "DialClient"

    const-string v1, "Stopping discovery"

    .line 109
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lo/StorageEventListener;->d:Lo/aiV;

    invoke-virtual {v0}, Lo/aiV;->b()V

    return-void
.end method
