.class public abstract Lo/HdmiClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HdmiClient$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar;>;"
        }
    .end annotation
.end field

.field private final d:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputDeviceIdentifier<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/HdmiClient;->d:Lo/InputDeviceIdentifier;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/HdmiClient;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lo/HdmiClient;Ljava/lang/Object;)Lo/HdmiClient$ActionBar;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lo/HdmiClient;->e(Ljava/lang/Object;)Lo/HdmiClient$ActionBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lo/HdmiClient;Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/HdmiClient;->d(Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/Object;)Lo/HdmiClient$ActionBar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar;"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Lo/HdmiClient$ActionBar;

    invoke-direct {v0, p0, p1}, Lo/HdmiClient$ActionBar;-><init>(Lo/HdmiClient;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lo/HdmiClient;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lo/HdmiClient;)Lo/InputDeviceIdentifier;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/HdmiClient;->d:Lo/InputDeviceIdentifier;

    return-object p0
.end method

.method private declared-synchronized d(Ljava/lang/Object;Lo/HdmiClient$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar;)V"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 108
    iget-object p2, p0, Lo/HdmiClient;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Ljava/lang/Object;)Lo/HdmiClient$ActionBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/HdmiClient<",
            "TK;TT;>.ActionBar;"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lo/HdmiClient;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/HdmiClient$ActionBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract a(Lo/HdmiTimerRecordSources;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HdmiTimerRecordSources;",
            ")TK;"
        }
    .end annotation
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiplexProducer#produceResults"

    .line 63
    invoke-static {v0}, Lo/GeofenceHardwareService;->e(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0, p2}, Lo/HdmiClient;->a(Lo/HdmiTimerRecordSources;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 74
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    invoke-direct {p0, v0}, Lo/HdmiClient;->e(Ljava/lang/Object;)Lo/HdmiClient$ActionBar;

    move-result-object v2

    if-nez v2, :cond_2

    .line 77
    invoke-direct {p0, v0}, Lo/HdmiClient;->c(Ljava/lang/Object;)Lo/HdmiClient$ActionBar;

    move-result-object v2

    const/4 v1, 0x1

    .line 80
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {v2, p1, p2}, Lo/HdmiClient$ActionBar;->a(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_3

    .line 87
    invoke-static {v2}, Lo/HdmiClient$ActionBar;->c(Lo/HdmiClient$ActionBar;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :cond_3
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 80
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 90
    invoke-static {}, Lo/GeofenceHardwareService;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 91
    invoke-static {}, Lo/GeofenceHardwareService;->b()V

    :cond_5
    throw p1
.end method

.method protected abstract e(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method
