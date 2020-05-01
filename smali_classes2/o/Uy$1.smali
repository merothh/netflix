.class final Lo/Uy$1;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uy;->c(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/hR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lo/adM;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/adM;Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p2, p0, Lo/Uy$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/Uy$1;->a:Lo/adM;

    iput-object p4, p0, Lo/Uy$1;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 2

    .line 129
    invoke-static {}, Lo/Uy;->c()Lo/JM;

    move-result-object p1

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lo/Uy$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 130
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lo/Uy$1$5;

    const-string v1, "PlayerErrorDialogDescriptorFactory createAutoLoginToken"

    invoke-direct {v0, p0, v1}, Lo/Uy$1$5;-><init>(Lo/Uy$1;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {p0, p1}, Lo/Uy$1;->d(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    return-void
.end method
