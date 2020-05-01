.class public final Lo/afG;
.super Lo/MessagePdu;
.source ""


# static fields
.field public static final a:Lo/afG;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

.field private static d:J

.field private static e:Lcom/netflix/cl/model/context/ProcessState;

.field private static final g:Lo/afG$Application;

.field private static h:Z

.field private static i:Z

.field private static final j:Lo/JavascriptInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/afG;

    invoke-direct {v0}, Lo/afG;-><init>()V

    sput-object v0, Lo/afG;->a:Lo/afG;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/afG;->b:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lo/afG$Application;

    invoke-direct {v0}, Lo/afG$Application;-><init>()V

    sput-object v0, Lo/afG;->g:Lo/afG$Application;

    .line 155
    new-instance v0, Lo/afG$ActionBar;

    invoke-direct {v0}, Lo/afG$ActionBar;-><init>()V

    check-cast v0, Lo/JavascriptInterface;

    sput-object v0, Lo/afG;->j:Lo/JavascriptInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ProcessStateLoggingManager"

    .line 28
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 91
    sget-object v0, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    sget-object v1, Lo/afG;->g:Lo/afG$Application;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    new-instance v0, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;-><init>(Ljava/lang/Long;)V

    .line 100
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    move-object v2, v0

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 99
    sput-object v0, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    .line 102
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    return-void
.end method

.method public static final synthetic a(Lo/afG;Lcom/netflix/cl/model/context/ProcessState;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/afG;->d(Lcom/netflix/cl/model/context/ProcessState;)V

    return-void
.end method

.method public static final b()V
    .locals 4

    .line 107
    sget-object v0, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lo/afG;->a:Lo/afG;

    check-cast v0, Lo/MessagePdu;

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/netflix/cl/model/event/session/Session;->doesSessionExist(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    sget-object v2, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;->getSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;->createSessionEndedEvent(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/SessionEnded;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 114
    sget-object v0, Lo/afG;->a:Lo/afG;

    move-object v2, v0

    check-cast v2, Lo/MessagePdu;

    .line 115
    invoke-direct {v0}, Lo/afG;->i()V

    .line 117
    :cond_3
    check-cast v1, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    sput-object v1, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    return-void
.end method

.method public static final d()V
    .locals 5

    .line 83
    sget-object v0, Lo/afG;->a:Lo/afG;

    check-cast v0, Lo/MessagePdu;

    .line 85
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->H()Lo/MimeTypeMap;

    move-result-object v0

    sget-object v1, Lo/afG;->j:Lo/JavascriptInterface;

    invoke-virtual {v0, v1}, Lo/MimeTypeMap;->b(Lo/JavascriptInterface;)Z

    .line 87
    sget-object v0, Lo/afG;->a:Lo/afG;

    new-instance v1, Lcom/netflix/cl/model/context/ProcessState;

    sget-object v2, Lcom/netflix/cl/model/AllocationMode;->none:Lcom/netflix/cl/model/AllocationMode;

    sget-object v3, Lcom/netflix/cl/model/InteractionMode;->none:Lcom/netflix/cl/model/InteractionMode;

    sget-object v4, Lcom/netflix/cl/model/ComputationMode;->none:Lcom/netflix/cl/model/ComputationMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/cl/model/context/ProcessState;-><init>(Lcom/netflix/cl/model/AllocationMode;Lcom/netflix/cl/model/InteractionMode;Lcom/netflix/cl/model/ComputationMode;)V

    invoke-direct {v0, v1}, Lo/afG;->d(Lcom/netflix/cl/model/context/ProcessState;)V

    return-void
.end method

.method private final declared-synchronized d(Lcom/netflix/cl/model/context/ProcessState;)V
    .locals 5

    monitor-enter p0

    .line 125
    :try_start_0
    sget-wide v0, Lo/afG;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 126
    sget-object v0, Lo/afG;->b:Ljava/util/ArrayList;

    sget-wide v1, Lo/afG;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    sput-object p1, Lo/afG;->e:Lcom/netflix/cl/model/context/ProcessState;

    .line 129
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    check-cast p1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    sput-wide v0, Lo/afG;->d:J

    .line 130
    move-object p1, p0

    check-cast p1, Lo/MessagePdu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final declared-synchronized e()V
    .locals 3

    const-class v0, Lo/afG;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lo/afG;->a:Lo/afG;

    check-cast v1, Lo/MessagePdu;

    const-wide/16 v1, 0x0

    .line 73
    sput-wide v1, Lo/afG;->d:J

    const/4 v1, 0x0

    .line 74
    move-object v2, v1

    check-cast v2, Lcom/netflix/cl/model/context/ProcessState;

    sput-object v2, Lo/afG;->e:Lcom/netflix/cl/model/context/ProcessState;

    .line 75
    sget-object v2, Lo/afG;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 76
    check-cast v1, Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    sput-object v1, Lo/afG;->c:Lcom/netflix/cl/model/event/session/action/ProcessStateTransition;

    const/4 v1, 0x0

    .line 77
    sput-boolean v1, Lo/afG;->h:Z

    .line 78
    sput-boolean v1, Lo/afG;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final synthetic e(Lo/afG;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lo/afG;->a()V

    return-void
.end method

.method private final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    .line 135
    :try_start_0
    sget-object v0, Lo/afG;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 136
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 137
    sget-object v1, Lo/afG;->a:Lo/afG;

    check-cast v1, Lo/MessagePdu;

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lo/afG;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 143
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 144
    sget-boolean v0, Lo/afG;->h:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lo/afG;->i:Z

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/context/ProcessState;

    sget-object v1, Lcom/netflix/cl/model/AllocationMode;->normal:Lcom/netflix/cl/model/AllocationMode;

    sget-object v2, Lcom/netflix/cl/model/InteractionMode;->direct:Lcom/netflix/cl/model/InteractionMode;

    sget-object v3, Lcom/netflix/cl/model/ComputationMode;->normal:Lcom/netflix/cl/model/ComputationMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/cl/model/context/ProcessState;-><init>(Lcom/netflix/cl/model/AllocationMode;Lcom/netflix/cl/model/InteractionMode;Lcom/netflix/cl/model/ComputationMode;)V

    invoke-direct {p0, v0}, Lo/afG;->d(Lcom/netflix/cl/model/context/ProcessState;)V

    .line 149
    invoke-direct {p0}, Lo/afG;->a()V

    const/4 v0, 0x1

    .line 150
    sput-boolean v0, Lo/afG;->h:Z

    const/4 v0, 0x0

    .line 151
    sput-boolean v0, Lo/afG;->i:Z

    :cond_1
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 42
    sput-boolean p1, Lo/afG;->i:Z

    return-void
.end method
