.class public final Lo/bL;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/bL;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lo/xZ;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static d:Lo/cz;

.field public static final e:Lo/bL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lo/bL;

    invoke-direct {v0}, Lo/bL;-><init>()V

    sput-object v0, Lo/bL;->e:Lo/bL;

    .line 27
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.create<DataRequestQueue>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/bL;->b:Lio/reactivex/subjects/ReplaySubject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized d(Ljava/util/List;Lo/xZ;Lo/cz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;",
            ">;",
            "Lo/xZ;",
            "Lo/cz;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "mslRequests"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFetcher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sput-object p1, Lo/bL;->a:Ljava/util/List;

    .line 40
    sput-object p2, Lo/bL;->c:Lo/xZ;

    .line 41
    sput-object p3, Lo/bL;->d:Lo/cz;

    .line 42
    sget-object p1, Lo/bL;->b:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {p1, p0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "dataRequest"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lo/bL;->a:Ljava/util/List;

    .line 55
    sget-object v1, Lo/bL;->c:Lo/xZ;

    .line 56
    sget-object v2, Lo/bL;->d:Lo/cz;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 58
    instance-of v4, p1, Lo/zW;

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lo/cz;->ar()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "DataRequestQueue"

    const-string v2, "Add MSL request to queue since Crypto initialization is delayed..."

    .line 59
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v1, p1}, Lo/xZ;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    move-result v3

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lo/bL;->b:Lio/reactivex/subjects/ReplaySubject;

    const-wide/16 v1, 0x1

    .line 67
    invoke-virtual {v0, v1, v2}, Lio/reactivex/subjects/ReplaySubject;->take(J)Lio/reactivex/Observable;

    move-result-object v4

    const-string v0, "instanceObservable\n                .take(1)"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/DataRequestQueue$add$1;-><init>(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    move-object v7, v0

    check-cast v7, Lo/alA;

    const/4 v6, 0x0

    .line 72
    sget-object p1, Lcom/netflix/mediaclient/service/DataRequestQueue$add$2;->b:Lcom/netflix/mediaclient/service/DataRequestQueue$add$2;

    move-object v5, p1

    check-cast v5, Lo/alA;

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 68
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
