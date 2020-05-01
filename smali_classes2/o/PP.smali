.class public final Lo/PP;
.super Lo/Vibrator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PP$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Vibrator<",
        "Lo/Ph;",
        "Lo/Pe;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/PP$TaskDescription;


# instance fields
.field private final b:Lo/Pq;

.field private final c:Lo/Pr;

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PP$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PP$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/PP;->d:Lo/PP$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;Lo/Pr;Lo/Pq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;",
            "Lo/Pr;",
            "Lo/Pq;",
            ")V"
        }
    .end annotation

    const-string v0, "safeManagedStateObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lo/UpdateLock;

    .line 20
    move-object v1, p2

    check-cast v1, Lo/UpdateLock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    invoke-direct {p0, p1, v0}, Lo/Vibrator;-><init>(Lio/reactivex/Observable;[Lo/UpdateLock;)V

    iput-object p1, p0, Lo/PP;->e:Lio/reactivex/Observable;

    iput-object p2, p0, Lo/PP;->c:Lo/Pr;

    iput-object p3, p0, Lo/PP;->b:Lo/Pq;

    .line 25
    invoke-virtual {p0}, Lo/PP;->d()V

    return-void
.end method

.method private final a(Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V
    .locals 5

    .line 65
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;->modulesList()Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/multititle/NotificationModuleList;->modules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 68
    check-cast v0, Ljava/lang/Iterable;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/netflix/model/leafs/social/multititle/NotificationGridModule;

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    invoke-direct {p0, v2}, Lo/PP;->c(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lo/PP$ActionBar;

    invoke-direct {v3, v2, v1, p0, p1}, Lo/PP$ActionBar;-><init>(Ljava/util/List;Ljava/util/List;Lo/PP;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V

    check-cast v3, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 88
    :cond_4
    iget-object v0, p0, Lo/PP;->c:Lo/Pr;

    .line 89
    sget-object v3, Lo/PI;->e:Lo/PI$Application;

    const/4 v4, 0x0

    invoke-static {v3, p1, v2, v4, v1}, Lo/PR;->c(Lo/PI$Application;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lo/PI;

    move-result-object p1

    .line 88
    invoke-interface {v0, p1}, Lo/Pr;->a(Lo/PI;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final c(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/social/multititle/NotificationHeroModule;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Ph;",
            ">;>;"
        }
    .end annotation

    .line 103
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 104
    new-instance v0, Lo/PP$StateListAnimator;

    invoke-direct {v0, p0}, Lo/PP$StateListAnimator;-><init>(Lo/PP;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable\n            .\u2026          .toObservable()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic c(Lo/PP;)Lo/Pr;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/PP;->c:Lo/Pr;

    return-object p0
.end method

.method public static final synthetic d(Lo/PP;)Lo/Pq;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/PP;->b:Lo/Pq;

    return-object p0
.end method

.method public static final synthetic d(Lo/PP;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/PP;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/PP;->b:Lo/Pq;

    .line 42
    invoke-interface {v0, p1}, Lo/Pq;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 44
    new-instance p1, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$1;-><init>(Lo/PP;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    .line 58
    sget-object p1, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$2;->c:Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$fetchNotificationSummary$2;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic e(Lo/PP;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/PP;->a(Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/PP;->e:Lio/reactivex/Observable;

    .line 31
    new-instance v1, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$subscribeToStateEvents$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$subscribeToStateEvents$1;-><init>(Lo/PP;)V

    move-object v3, v1

    check-cast v3, Lo/alA;

    .line 36
    sget-object v1, Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$subscribeToStateEvents$2;->d:Lcom/netflix/mediaclient/ui/notifications/v2/multititle/MultiTitleNotificationUIPresenterV2$subscribeToStateEvents$2;

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
