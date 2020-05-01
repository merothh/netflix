.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;
.super Ljava/lang/Object;
.source "MdxMiniPlayerViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    .line 949
    if-nez v0, :cond_1

    .line 950
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "currentVideo is null - can\'t show episodes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_1
    instance-of v1, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-nez v1, :cond_2

    .line 955
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "currentVideo is not an episode detail"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 959
    :cond_2
    const-string/jumbo v1, "MdxMiniPlayerViews"

    const-string/jumbo v2, "Showing episodes dialog"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 962
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 963
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$8;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method
