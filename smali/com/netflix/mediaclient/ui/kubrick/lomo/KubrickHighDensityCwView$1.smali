.class Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;
.super Ljava/lang/Object;
.source "KubrickHighDensityCwView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

.field final synthetic val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView$1;->this$0:Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/kubrick/lomo/KubrickHighDensityCwView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method
