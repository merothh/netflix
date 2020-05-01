.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

.field final synthetic val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playEpisode(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget v2, v2, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/coppola/details/CoppolaDetailsActivity;->setEpisodesLayoutCurrentEpisodeId(Ljava/lang/String;I)V

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodeId:Ljava/lang/String;

    .line 231
    :cond_0
    return-void
.end method
