.class Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;
.super Ljava/lang/Object;
.source "PaginatedDiscoveryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

.field private final title:Ljava/lang/String;

.field private final trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private final turboCollectionId:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;II)V
    .locals 4

    .prologue
    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->turboCollectionId:J

    .line 139
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->title:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-interface {p5}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, p7, p6, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 143
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/TurboExtendedDiscoveryFrag;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->turboCollectionId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->trackable:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$CollectionClickListener;->this$0:Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;

    invoke-static {v6}, Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;->access$000(Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter;)Lcom/netflix/mediaclient/ui/lomo/discovery/DiscoveryBackgroundAnimator;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/discovery/extended/BaseExtendedDiscoveryFrag;->updatePage(Lcom/netflix/mediaclient/servicemgr/ServiceManager;JLjava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/ui/lomo/discovery/PaginatedDiscoveryAdapter$BlurredStoryArtProvider;)V

    .line 153
    :cond_0
    return-void
.end method
