.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "DebugMenuItems.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 556
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/ui/signup/OnRampActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 559
    :cond_0
    return-void
.end method
