.class Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;
.super Ljava/lang/Object;
.source "BarkerPreReleaseDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

.field final synthetic val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;->this$2:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;->this$2:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    .line 182
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->STORY_ART:Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->setPlayLocation(Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;->this$2:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback;->this$1:Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup$FetchSupplementalsCallback$1;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;I)V

    .line 184
    return-void
.end method