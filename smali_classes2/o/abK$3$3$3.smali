.class Lo/abK$3$3$3;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abK$3$3;->run()V
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
.field final synthetic a:Lo/abK$3$3;

.field final synthetic c:Lo/Ik;

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/abK$3$3;Ljava/lang/String;Ljava/lang/Runnable;Lo/Ik;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/abK$3$3$3;->a:Lo/abK$3$3;

    iput-object p3, p0, Lo/abK$3$3$3;->d:Ljava/lang/Runnable;

    iput-object p4, p0, Lo/abK$3$3$3;->c:Lo/Ik;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/JM$StateListAnimator;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lo/abK$3$3$3;->a:Lo/abK$3$3;

    iget-object v0, v0, Lo/abK$3$3;->c:Lo/abK$3;

    iget-object v0, v0, Lo/abK$3;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/abK$3$3$3;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lo/abK$3$3$3;->c:Lo/Ik;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/Ik;->a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/abK$3$3$3;->b(Lo/JM$StateListAnimator;)V

    return-void
.end method
