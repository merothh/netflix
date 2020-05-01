.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;

.field final synthetic val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->access$2800(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;->val$episode:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;->access$2902(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    return-void
.end method
