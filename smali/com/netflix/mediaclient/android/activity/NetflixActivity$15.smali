.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 3465
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3468
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lo/Zg;->c:Lo/Zg;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 3469
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/Zg;->a(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v1

    .line 3468
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 3470
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$15;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    return-void
.end method
