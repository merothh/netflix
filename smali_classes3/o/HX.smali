.class public final Lo/HX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HX$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/HX$Application;


# instance fields
.field private final c:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Ae;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/HX$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HX$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/HX;->d:Lo/HX$Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Li\u2026<PlayerPrepareRequest>>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/HX;->c:Lio/reactivex/subjects/PublishSubject;

    .line 30
    iget-object v0, p0, Lo/HX;->c:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    check-cast v0, Lio/reactivex/Observable;

    iput-object v0, p0, Lo/HX;->e:Lio/reactivex/Observable;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type io.reactivex.Observable<kotlin.collections.List<com.netflix.mediaclient.servicemgr.PlayerPrepareRequest>>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d(ILo/GK;)V
    .locals 2

    .line 70
    sget-object v0, Lo/HX;->d:Lo/HX$Application;

    check-cast v0, Lo/MessagePdu;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 73
    invoke-virtual {p2, v1}, Lo/GK;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-virtual {p2}, Lo/GK;->x()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 76
    invoke-virtual {p2, p1}, Lo/GK;->c(I)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 79
    invoke-direct {p0, v0}, Lo/HX;->d(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private final d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 114
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 89
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 117
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 91
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->g()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 92
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lo/Ae;

    .line 93
    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    .line 95
    sget-object v7, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 92
    invoke-direct {v4, v2, v5, v6, v7}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v2, Lo/akj;->a:Lo/akj;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 99
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 100
    iget-object p1, p0, Lo/HX;->c:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static final synthetic e(Lo/HX;ILo/GK;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/HX;->d(ILo/GK;)V

    return-void
.end method


# virtual methods
.method public final d(Lo/UnicodeScript;Lo/GK;Lo/Am;)V
    .locals 8

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceManager"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    const-class v1, Lo/GY;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    sget-object v1, Lo/HX$ActionBar;->c:Lo/HX$ActionBar;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "lifecycleOwner.getSafeMa\u2026asEvent.ItemEvent.Focus }"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$2;-><init>(Lo/HX;Lo/GK;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 50
    sget-object p2, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$3;->c:Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$3;

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 44
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 56
    iget-object p2, p0, Lo/HX;->e:Lio/reactivex/Observable;

    .line 57
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v0, "playerPrepareRequests\n  \u2026Schedulers.computation())"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p1, v0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object p1

    const-string v0, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 107
    check-cast p1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {p1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p1

    check-cast p1, Lio/reactivex/ObservableConverter;

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 59
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;

    invoke-direct {p1, p3}, Lcom/netflix/mediaclient/ui/extras/player/ExtrasFeedPrepareQueue$observe$4;-><init>(Lo/Am;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
