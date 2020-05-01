.class Lo/acK$Application$3$4;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acK$Application$3;->c(Lcom/netflix/mediaclient/service/user/UserAgent;)V
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
.field final synthetic d:Lo/acK$Application$3;


# direct methods
.method constructor <init>(Lo/acK$Application$3;Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lo/acK$Application$3$4;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/acK$Application$3$4;->e(Z)V

    return-void
.end method

.method private synthetic e(Z)V
    .locals 0

    .line 243
    iget-object p1, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    iget-object p1, p1, Lo/acK$Application$3;->e:Lo/acK$Application;

    iget-object p1, p1, Lo/acK$Application;->d:Lo/acK;

    invoke-static {p1}, Lo/acK;->c(Lo/acK;)V

    return-void
.end method


# virtual methods
.method public e(Lo/JM$StateListAnimator;)V
    .locals 4

    .line 238
    iget-object v0, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    iget-object v0, v0, Lo/acK$Application$3;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    iget-object v1, v1, Lo/acK$Application$3;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    iget-object v0, v0, Lo/acK$Application$3;->b:Lo/Ik;

    .line 240
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    new-instance v2, Lo/acH;

    invoke-direct {v2, p0}, Lo/acH;-><init>(Lo/acK$Application$3$4;)V

    const-string v3, "https://www.netflix.com/verifyage"

    .line 239
    invoke-virtual {v0, v1, p1, v3, v2}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;Lo/Ik$Application;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Lo/Dc;->onError(Ljava/lang/Throwable;)V

    .line 250
    iget-object p1, p0, Lo/acK$Application$3$4;->d:Lo/acK$Application$3;

    iget-object p1, p1, Lo/acK$Application$3;->e:Lo/acK$Application;

    iget-object p1, p1, Lo/acK$Application;->d:Lo/acK;

    invoke-static {p1}, Lo/acK;->c(Lo/acK;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/acK$Application$3$4;->e(Lo/JM$StateListAnimator;)V

    return-void
.end method
