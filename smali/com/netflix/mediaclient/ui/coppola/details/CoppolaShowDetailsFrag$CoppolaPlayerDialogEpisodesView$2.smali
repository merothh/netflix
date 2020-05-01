.class Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;
.super Ljava/lang/Object;
.source "CoppolaShowDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

.field final synthetic val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->EPISODE:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->this$1:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag$CoppolaPlayerDialogEpisodesView$2;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;->access$602(Lcom/netflix/mediaclient/ui/coppola/details/CoppolaShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
