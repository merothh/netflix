.class Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;
.super Ljava/lang/Object;
.source "PaginatedDiscoveryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

.field private final trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V
    .locals 4

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getHeroTrackId()I

    move-result v2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getListPos()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;-><init>()V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->setRetainInstance(Z)V

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$AllCWClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;)Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/CWExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    .line 129
    :cond_0
    return-void
.end method
