.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onMdxDialogResponse(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 2

    .line 1592
    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    invoke-interface {p1}, Lo/zN;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->e:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lo/Am;->b(Landroid/content/Intent;)V

    .line 1598
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->b:Ljava/lang/String;

    const-string v0, "com.netflix.mediaclient.intent.action.MDX_ACTION_REMOTE_LOGIN_CONSENT"

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1599
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$21;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setConnectingToTarget(Z)V

    :cond_0
    return-void
.end method
