.class Lo/acP$1;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
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
.field final synthetic b:Lo/acP;

.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/acP;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lo/acP$1;->b:Lo/acP;

    iput-object p3, p0, Lo/acP$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lo/acP$1;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 3

    .line 341
    sget-object p1, Lcom/netflix/mediaclient/service/user/UserAgent$PinType;->a:Lcom/netflix/mediaclient/service/user/UserAgent$PinType;

    .line 342
    iget-object v0, p0, Lo/acP$1;->b:Lo/acP;

    invoke-static {v0}, Lo/acP;->c(Lo/acP;)Lo/JM;

    move-result-object v0

    iget-object v1, p0, Lo/acP$1;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lo/JM;->c(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/acP$1;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 343
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/acP$1$5;

    const-string v1, "verifyPin"

    invoke-direct {v0, p0, v1}, Lo/acP$1$5;-><init>(Lo/acP$1;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 338
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lo/acP$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method
