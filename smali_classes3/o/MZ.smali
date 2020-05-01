.class public final Lo/MZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MZ$Application;,
        Lo/MZ$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/MZ$ActionBar;


# instance fields
.field private c:Lio/reactivex/disposables/Disposable;

.field private d:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/MZ$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MZ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MZ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/MZ;->a:Lo/MZ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Lio/reactivex/subjects/ReplaySubject;->createWithSize(I)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.createWithSize<State>(1)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 34
    iget-object v0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    sget-object v1, Lo/MZ$Application$TaskDescription;->e:Lo/MZ$Application$TaskDescription;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic c(Lo/MZ;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 38
    iget-object v0, p0, Lo/MZ;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 39
    check-cast v0, Lio/reactivex/disposables/Disposable;

    iput-object v0, p0, Lo/MZ;->c:Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x1

    .line 41
    invoke-static {v0}, Lio/reactivex/subjects/ReplaySubject;->createWithSize(I)Lio/reactivex/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "ReplaySubject.createWithSize<State>(1)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 42
    iget-object v0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    sget-object v1, Lo/MZ$Application$TaskDescription;->e:Lo/MZ$Application$TaskDescription;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "Lo/MZ$Application;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lo/MZ;->e()V

    .line 97
    iget-object v0, p0, Lo/MZ;->d:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/ReplaySubject;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public final e()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/MZ;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    invoke-virtual {v0}, Lo/Zx;->i()Lio/reactivex/Observable;

    move-result-object v1

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;-><init>(Lo/MZ;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$2;-><init>(Lo/MZ;)V

    move-object v2, v0

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/MZ;->c:Lio/reactivex/disposables/Disposable;

    return-void
.end method
