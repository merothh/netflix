.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 3661
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 3664
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3668
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, -0x1

    .line 3677
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4bdd92b6    # 2.9042028E7f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x55c5a9fa

    if-eq v0, v1, :cond_3

    const v1, 0x56d4a20e

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "com.netflix.mediaclient.ui.error.ACTION_ACCOUNT_INACTIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "com.netflix.mediaclient.ui.error.ACTION_DISPLAY_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x2

    :cond_5
    :goto_0
    if-eqz p2, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    goto :goto_1

    .line 3686
    :cond_6
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2600(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_1

    .line 3683
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$2500(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_1

    :cond_8
    const-string p1, "NetflixActivity"

    const-string p2, "got account inactive error - to signup cookied in"

    .line 3679
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object p2, Lo/abD;->b:Lo/abD$StateListAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$18;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2, v0}, Lo/abD$StateListAnimator;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->gotoSignupActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
