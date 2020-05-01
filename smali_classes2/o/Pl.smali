.class public final Lo/Pl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Pl$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Pl$Activity;


# instance fields
.field private final a:Lo/Pj;

.field private final b:Lo/UnicodeScript;

.field private final d:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lo/Pd;

.field private final j:Lio/reactivex/Observable;
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

    new-instance v0, Lo/Pl$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Pl$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Pl;->c:Lo/Pl$Activity;

    return-void
.end method

.method public constructor <init>(Lo/UnicodeScript;Lo/Pj;Lo/Pd;Lio/reactivex/Observable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UnicodeScript;",
            "Lo/Pj;",
            "Lo/Pd;",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateEventPub"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Pl;->b:Lo/UnicodeScript;

    iput-object p2, p0, Lo/Pl;->a:Lo/Pj;

    iput-object p3, p0, Lo/Pl;->e:Lo/Pd;

    iput-object p4, p0, Lo/Pl;->j:Lio/reactivex/Observable;

    .line 20
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "ReplaySubject.create<Lis\u2026NotificationUIModelV2>>()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Pl;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 23
    iget-object p1, p0, Lo/Pl;->d:Lio/reactivex/subjects/ReplaySubject;

    check-cast p1, Lio/reactivex/Observable;

    .line 24
    iget-object p2, p0, Lo/Pl;->b:Lo/UnicodeScript;

    .line 87
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p2, p3}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object p2

    const-string p3, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 88
    check-cast p2, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {p2}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    check-cast p2, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 26
    new-instance p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$1;-><init>(Lo/Pl;)V

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 29
    sget-object p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$2;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$2;

    move-object v1, p1

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 37
    iget-object p1, p0, Lo/Pl;->a:Lo/Pj;

    invoke-virtual {p1}, Lo/Pj;->a()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    .line 38
    iget-object p4, p0, Lo/Pl;->b:Lo/UnicodeScript;

    .line 89
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p4, v0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object p4

    invoke-static {p4, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 90
    check-cast p4, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {p4}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p3

    check-cast p3, Lio/reactivex/ObservableConverter;

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 40
    sget-object p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$3;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$3;

    move-object v3, p1

    check-cast v3, Lo/alA;

    .line 45
    sget-object p1, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$4;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$4;

    move-object v1, p1

    check-cast v1, Lo/alA;

    .line 39
    invoke-static/range {v0 .. v5}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 50
    invoke-direct {p0}, Lo/Pl;->e()V

    return-void
.end method

.method public static final synthetic d(Lo/Pl;)Lo/Pj;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/Pl;->a:Lo/Pj;

    return-object p0
.end method

.method public static final synthetic e(Lo/Pl;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/Pl;->d:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method

.method private final e()V
    .locals 8

    .line 54
    iget-object v0, p0, Lo/Pl;->e:Lo/Pd;

    .line 55
    invoke-virtual {v0}, Lo/Pd;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lo/Pl;->b:Lo/UnicodeScript;

    .line 85
    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v1, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    const-string v2, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 86
    check-cast v1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$1;-><init>(Lo/Pl;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$2;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsUIPresenterV2$loadNotifications$2;

    move-object v3, v0

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 57
    invoke-static/range {v2 .. v7}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
