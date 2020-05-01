.class Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;
.super Ljava/lang/Object;
.source "CwTestView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/CwTestView;

.field final synthetic val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/CwTestView;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;->val$video:Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestView$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/CwTestView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/lomo/CwTestView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method
