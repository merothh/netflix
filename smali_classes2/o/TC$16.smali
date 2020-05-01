.class Lo/TC$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

.field final synthetic e:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 0

    .line 3226
    iput-object p1, p0, Lo/TC$16;->e:Lo/TC;

    iput-object p2, p0, Lo/TC$16;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3229
    iget-object v0, p0, Lo/TC$16;->e:Lo/TC;

    invoke-virtual {v0}, Lo/TC;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3230
    iget-object v1, p0, Lo/TC$16;->e:Lo/TC;

    invoke-virtual {v1}, Lo/TC;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3233
    :cond_0
    new-instance v1, Lo/TC$16$2;

    invoke-direct {v1, p0, v0}, Lo/TC$16$2;-><init>(Lo/TC$16;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    :cond_1
    :goto_0
    return-void
.end method
