.class final Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "source"

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "entry"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->appMenu:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
