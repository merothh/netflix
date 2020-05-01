.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;
.super Ljava/lang/Object;
.source "VideoDetailsViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    return-void
.end method
