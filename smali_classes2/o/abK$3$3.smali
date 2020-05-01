.class Lo/abK$3$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abK$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/abK$3;


# direct methods
.method constructor <init>(Lo/abK$3;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/abK$3$3;->c:Lo/abK$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 127
    new-instance v0, Lo/JM;

    invoke-direct {v0}, Lo/JM;-><init>()V

    const-string v1, "eog_landing"

    const-string v2, "Get autologin token..."

    .line 128
    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lo/Ik;

    iget-object v2, p0, Lo/abK$3$3;->c:Lo/abK$3;

    iget-object v2, v2, Lo/abK$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v1, v2}, Lo/Ik;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 131
    new-instance v2, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v3, Lo/aeK;->c:Lcom/android/volley/VolleyError;

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 132
    new-instance v3, Lo/abK$3$3$2;

    invoke-direct {v3, p0, v1, v2}, Lo/abK$3$3$2;-><init>(Lo/abK$3$3;Lo/Ik;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 138
    iget-object v2, p0, Lo/abK$3$3;->c:Lo/abK$3;

    iget-object v2, v2, Lo/abK$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iget-object v2, p0, Lo/abK$3$3;->c:Lo/abK$3;

    iget-object v2, v2, Lo/abK$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v2}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/32 v4, 0x36ee80

    .line 141
    invoke-virtual {v0, v4, v5}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v2, p0, Lo/abK$3$3;->c:Lo/abK$3;

    iget-object v2, v2, Lo/abK$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 142
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lo/abK$3$3$3;

    const-string v4, "createAutoLoginToken"

    invoke-direct {v2, p0, v4, v3, v1}, Lo/abK$3$3$3;-><init>(Lo/abK$3$3;Ljava/lang/String;Ljava/lang/Runnable;Lo/Ik;)V

    .line 143
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
