.class Lo/TC$16$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/TC$16;


# direct methods
.method constructor <init>(Lo/TC$16;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 3233
    iput-object p1, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iput-object p2, p0, Lo/TC$16$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    .line 3238
    iget-object p1, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iget-object p1, p1, Lo/TC$16;->e:Lo/TC;

    iget-object p1, p1, Lo/TC;->i:Lo/Tv;

    if-eqz p1, :cond_0

    .line 3239
    iget-object p1, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iget-object p1, p1, Lo/TC$16;->e:Lo/TC;

    iget-object p1, p1, Lo/TC;->i:Lo/Tv;

    invoke-virtual {p1}, Lo/Tv;->j()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object p1

    goto :goto_0

    .line 3241
    :cond_0
    new-instance p1, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;

    const/16 v0, -0x14f

    const-string v1, "PlayerFragment"

    invoke-direct {p1, v1, v0}, Lcom/netflix/mediaclient/servicemgr/EmptyPlayContext;-><init>(Ljava/lang/String;I)V

    .line 3244
    :goto_0
    sget-object v0, Lo/Tn;->d:Lo/Tn$Application;

    iget-object v1, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iget-object v1, v1, Lo/TC$16;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    check-cast v1, Lo/sY;

    invoke-virtual {v0, v1, p1}, Lo/Tn$Application;->b(Lo/sY;Lcom/netflix/mediaclient/servicemgr/PlayContext;)Lo/Tn;

    move-result-object p1

    .line 3245
    iget-object v0, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iget-object v0, v0, Lo/TC$16;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->U_()Lo/Am;

    move-result-object v0

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lo/Tn;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 v0, 0x1

    .line 3246
    invoke-virtual {p1, v0}, Lo/Tn;->setCancelable(Z)V

    .line 3247
    iget-object v0, p0, Lo/TC$16$2;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    .line 3248
    iget-object p1, p0, Lo/TC$16$2;->e:Lo/TC$16;

    iget-object p1, p1, Lo/TC$16;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->X()V

    return-void
.end method
