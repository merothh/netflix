.class Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "HomeActivity.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$6;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$1002(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z

    .line 650
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/OnRampEligibility;->isEligible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const-class v3, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6$1;->this$1:Lcom/netflix/mediaclient/ui/home/HomeActivity$6;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity$6;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$700(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    goto :goto_0
.end method
