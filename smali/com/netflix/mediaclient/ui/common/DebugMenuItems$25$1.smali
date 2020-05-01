.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25$1;
.super Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;
.source "DebugMenuItems.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/SimpleConfigurationAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 488
    const-string/jumbo v0, "Failed to receive config data"

    .line 489
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSucces()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 490
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->refresh()V

    .line 491
    const-string/jumbo v0, "Config data received successfully!"

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25$1;->this$1:Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$25;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method
