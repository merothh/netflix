.class Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;
.super Ljava/lang/Object;
.source "CWExtendedDiscoveryFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$RemotePlaybackListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemotePlaybackInitiated()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder$1;->this$1:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$CWViewHolder;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method
