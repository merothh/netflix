.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/model/leafs/OnRampEligibility$Action;->FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    new-instance v2, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28$1;-><init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems$28;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->doOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 561
    const/4 v0, 0x1

    return v0
.end method
