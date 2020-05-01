.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "source"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v0, "entry"

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->errorDialog:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$EntryPoint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
