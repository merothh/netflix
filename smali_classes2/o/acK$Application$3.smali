.class Lo/acK$Application$3;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acK$Application;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lo/Ik;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/acK$Application;


# direct methods
.method constructor <init>(Lo/acK$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;Lo/Ik;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lo/acK$Application$3;->e:Lo/acK$Application;

    iput-object p3, p0, Lo/acK$Application$3;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/acK$Application$3;->a:Ljava/lang/Runnable;

    iput-object p5, p0, Lo/acK$Application$3;->b:Lo/Ik;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lo/acK$Application$3;->e:Lo/acK$Application;

    iget-object p1, p1, Lo/acK$Application;->d:Lo/acK;

    invoke-static {p1}, Lo/acK;->d(Lo/acK;)Lo/JM;

    move-result-object p1

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/acK$Application$3;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 234
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/acK$Application$3$4;

    const-string v1, "createAutoLoginToken"

    invoke-direct {v0, p0, v1}, Lo/acK$Application$3$4;-><init>(Lo/acK$Application$3;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lo/acK$Application$3;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method
