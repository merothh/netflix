.class Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;
.super Ljava/lang/Object;
.source "CwDiscoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

.field final synthetic val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->whereToPlay(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;->remote:Lcom/netflix/mediaclient/ui/common/PlaybackLauncher$PlaybackTarget;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->access$000(Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;)Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$RemotePlaybackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;->access$000(Lcom/netflix/mediaclient/ui/lomo/CwDiscoveryView;)Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$RemotePlaybackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag$RemotePlaybackListener;->onRemotePlaybackInitiated()V

    :cond_0
    return-void
.end method
