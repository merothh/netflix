.class public final Lo/Pd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Pd$Activity;
    }
.end annotation


# static fields
.field public static final b:Lo/Pd$Activity;


# instance fields
.field private final d:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/hW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Pd$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Pd$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Pd;->b:Lo/Pd$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.create()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Pd;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 24
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->i()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$1;-><init>(Lo/Pd;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/Pd;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/Pd;->d:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Ph;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lo/Pd$ActionBar;

    invoke-direct {v0, p0}, Lo/Pd$ActionBar;-><init>(Lo/Pd;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create { subs\u2026              )\n        }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lo/Pa;",
            ">;>;"
        }
    .end annotation

    const-string v0, "eventGuids"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lo/Pd$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/Pd$TaskDescription;-><init>(Lo/Pd;Ljava/util/List;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026          }\n            }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lo/Pd;->d:Lio/reactivex/subjects/ReplaySubject;

    move-object v1, v0

    check-cast v1, Lio/reactivex/Observable;

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$refreshNotificationCount$1;->c:Lcom/netflix/mediaclient/ui/notifications/v2/NotificationsRepositoryV2$refreshNotificationCount$1;

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
