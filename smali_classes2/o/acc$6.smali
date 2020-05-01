.class Lo/acc$6;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/acc;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lo/Ik;

.field final synthetic d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/acc;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/Runnable;Lo/Ik;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lo/acc$6;->a:Lo/acc;

    iput-object p3, p0, Lo/acc$6;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/acc$6;->b:Ljava/lang/Runnable;

    iput-object p5, p0, Lo/acc$6;->c:Lo/Ik;

    iput-object p6, p0, Lo/acc$6;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/JM$StateListAnimator;)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lo/acc$6;->a:Lo/acc;

    iget-boolean v0, v0, Lo/acc;->g:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lo/acc$6;->a:Lo/acc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/acc;->c(Z)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lo/acc$6;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/acc$6;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1102
    iget-object v0, p0, Lo/acc$6;->c:Lo/Ik;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    iget-object v2, p0, Lo/acc$6;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lo/Ik;->c(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1094
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/acc$6;->e(Lo/JM$StateListAnimator;)V

    return-void
.end method
