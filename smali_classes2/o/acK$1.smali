.class Lo/acK$1;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acK;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lcom/netflix/mediaclient/service/user/UserAgent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/acK;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/acK;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lo/acK$1;->b:Lo/acK;

    iput-object p3, p0, Lo/acK$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lo/acK$1;->b:Lo/acK;

    invoke-static {v0}, Lo/acK;->d(Lo/acK;)Lo/JM;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/JM;->b(Lcom/netflix/mediaclient/service/user/UserAgent;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/acK$1;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 179
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/acK$1$4;

    const-string v1, "verifyAge"

    invoke-direct {v0, p0, v1}, Lo/acK$1$4;-><init>(Lo/acK$1;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lo/acK$1;->e(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method
