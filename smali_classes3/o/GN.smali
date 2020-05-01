.class public final Lo/GN;
.super Lo/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GN$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/GN$StateListAnimator;


# instance fields
.field private final a:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/Pd;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GN$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GN$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/GN;->b:Lo/GN$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 26
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create<L\u2026NotificationUIModelV2>>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GN;->c:Lio/reactivex/subjects/BehaviorSubject;

    .line 27
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "BehaviorSubject.create<Int>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GN;->a:Lio/reactivex/subjects/BehaviorSubject;

    .line 28
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/GN;->d:Lio/reactivex/subjects/BehaviorSubject;

    .line 29
    new-instance v0, Lo/Pd;

    invoke-direct {v0}, Lo/Pd;-><init>()V

    iput-object v0, p0, Lo/GN;->e:Lo/Pd;

    .line 34
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lo/GN;->g:Ljava/util/Set;

    .line 36
    iget-object v0, p0, Lo/GN;->c:Lio/reactivex/subjects/BehaviorSubject;

    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/GN;->h:Lio/reactivex/Observable;

    return-void
.end method

.method public static final synthetic a(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/GN;->a:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic c(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/GN;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic d(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/GN;->d:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final synthetic e(Lo/GN;)Lo/Pd;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/GN;->e:Lo/Pd;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 37
    iget-object v0, p0, Lo/GN;->a:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "unreadCountPub.value ?: 0"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventGuids"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lo/GN;->c:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v1, "notificationsListModelPub.value ?: return"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    .line 135
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Pa;

    .line 101
    invoke-virtual {v1}, Lo/Pa;->read()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lo/akz;->d()V

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    goto :goto_3

    .line 106
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lo/GN;->g:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_5
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p0, Lo/GN;->e:Lo/Pd;

    invoke-virtual {v1, v0}, Lo/Pd;->c(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 115
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v0, "repo.markNotificationAsR\u2026S, TimeUnit.MILLISECONDS)"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$2;-><init>(Lo/GN;)V

    move-object v7, v0

    check-cast v7, Lo/alA;

    const/4 v6, 0x0

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$3;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$markNotificationsAsRead$3;

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 116
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 125
    iget-object v0, p0, Lo/GN;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final b()I
    .locals 2

    .line 38
    iget-object v0, p0, Lo/GN;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "totalCountPub.value ?: 0"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;>;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/GN;->h:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lo/GN;->i:Z

    return-void
.end method

.method public final d()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/GN;->e:Lo/Pd;

    invoke-virtual {v0}, Lo/Pd;->a()Lio/reactivex/Observable;

    move-result-object v1

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;-><init>(Lo/GN;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lo/GN;->i:Z

    return v0
.end method

.method protected onCleared()V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/GN;->c:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->onComplete()V

    .line 131
    invoke-super {p0}, Lo/Enum;->onCleared()V

    return-void
.end method
