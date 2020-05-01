.class Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;
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
    .line 974
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 977
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    const-string/jumbo v1, "Activity destroyed, can\'t show rating"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;Ljava/lang/String;)V

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 983
    if-nez v1, :cond_2

    .line 984
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v1, "Video is NULL. This should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    :cond_2
    const-string/jumbo v0, "MdxMiniPlayerViews"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$000(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Utils;->getUserRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;

    move-result-object v0

    .line 989
    if-nez v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    .line 990
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 991
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Curr user rating: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->access$700(Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;Ljava/lang/String;)V

    .line 994
    :cond_3
    const-string/jumbo v0, "MdxMiniPlayerViews"

    const-string/jumbo v2, "Report rate action started"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportRateActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 997
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1003
    :cond_4
    invoke-static {v1}, Lcom/netflix/mediaclient/util/MdxUtils;->getPlayableVideoId(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v4, v6, :cond_6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_2
    const v4, 0x7f0300e9

    .line 1002
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Landroid/view/View;IZ)Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    move-result-object v0

    .line 1009
    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 1010
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 1012
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews$10;->this$0:Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    goto/16 :goto_0

    .line 989
    :cond_5
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/UserRating;->getUserRating()F

    move-result v0

    goto/16 :goto_1

    .line 1004
    :cond_6
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    goto :goto_2
.end method
