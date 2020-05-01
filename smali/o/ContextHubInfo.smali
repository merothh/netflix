.class public Lo/ContextHubInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InputDeviceIdentifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ContextHubInfo$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/InputDeviceIdentifier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lo/InputDeviceIdentifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InputDeviceIdentifier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lo/InputDeviceIdentifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lo/InputDeviceIdentifier<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lo/ContextHubInfo;->c:I

    .line 38
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/ContextHubInfo;->d:Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {p3}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InputDeviceIdentifier;

    iput-object p1, p0, Lo/ContextHubInfo;->b:Lo/InputDeviceIdentifier;

    .line 40
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lo/ContextHubInfo;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lo/ContextHubInfo;->a:I

    return-void
.end method

.method static synthetic b(Lo/ContextHubInfo;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/ContextHubInfo;->d:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic c(Lo/ContextHubInfo;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/ContextHubInfo;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic d(Lo/ContextHubInfo;)I
    .locals 2

    .line 20
    iget v0, p0, Lo/ContextHubInfo;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lo/ContextHubInfo;->a:I

    return v0
.end method


# virtual methods
.method c(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
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

    .line 66
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    .line 67
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ThrottlingProducer"

    invoke-interface {v0, v1, v3, v2}, Lo/InputManagerInternal;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lo/ContextHubInfo;->b:Lo/InputDeviceIdentifier;

    new-instance v1, Lo/ContextHubInfo$Application;

    invoke-direct {v1, p0, p1, v2}, Lo/ContextHubInfo$Application;-><init>(Lo/ContextHubInfo;Lo/BrightnessChangeEvent;Lo/ContextHubInfo$4;)V

    invoke-interface {v0, v1, p2}, Lo/InputDeviceIdentifier;->d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    return-void
.end method

.method public d(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BrightnessChangeEvent<",
            "TT;>;",
            "Lo/HdmiTimerRecordSources;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->e()Lo/InputManagerInternal;

    move-result-object v0

    .line 47
    invoke-interface {p2}, Lo/HdmiTimerRecordSources;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThrottlingProducer"

    invoke-interface {v0, v1, v2}, Lo/InputManagerInternal;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget v0, p0, Lo/ContextHubInfo;->a:I

    iget v1, p0, Lo/ContextHubInfo;->c:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lo/ContextHubInfo;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    iget v0, p0, Lo/ContextHubInfo;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/ContextHubInfo;->a:I

    const/4 v2, 0x0

    .line 58
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/ContextHubInfo;->c(Lo/BrightnessChangeEvent;Lo/HdmiTimerRecordSources;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
