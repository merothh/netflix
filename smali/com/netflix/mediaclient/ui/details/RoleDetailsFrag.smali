.class public Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "RoleDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus;
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/DetailsActivity$Reloader;
.implements Lcom/netflix/mediaclient/ui/details/ILayoutManager;


# static fields
.field private static final EXTRA_ACTOR_ID:Ljava/lang/String; = "actor_id"

.field public static final FOOTER_HEIGHT:I = 0xc8

.field private static final LONG_VIEW_ANIMATION_DURATION_MS:J = 0xc8L

.field public static final RDP_ACTION_CLOSE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.RDP_CLOSE"

.field private static final TAG:Ljava/lang/String; = "RoleDetailsFrag"


# instance fields
.field private actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

.field private actorId:Ljava/lang/String;

.field private adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private addToListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private caret:Landroid/view/View;

.field private detailsRequestId:J

.field protected final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private imageTint:I

.field private isLoading:Z

.field private layoutManagerSavedState:Landroid/os/Parcelable;

.field private leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private numColumns:I

.field private parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private relatedRequestId:J

.field private still:Lcom/netflix/model/branches/FalkorActorStill;

.field private stillImageHeight:I

.field videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->addToListeners:Ljava/util/Map;

    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->rotateCaretTo(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->imageTint:I

    return v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->stillImageHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->addMyListener(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->detailsRequestId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Lcom/netflix/model/branches/FalkorActorStill;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->still:Lcom/netflix/model/branches/FalkorActorStill;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Lcom/netflix/model/branches/FalkorActorStill;)Lcom/netflix/model/branches/FalkorActorStill;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->still:Lcom/netflix/model/branches/FalkorActorStill;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->relatedRequestId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method private addMyListener(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->addToListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;
    .locals 3

    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "actor_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private fetchData()V
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Manager is null - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isLoading:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->detailsRequestId:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->relatedRequestId:J

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->onNetFlixLabel:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const-string/jumbo v0, "RoleDetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fetching data for actor ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->detailsRequestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;J)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->videoId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;

    iget-wide v4, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->relatedRequestId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$FetchActorDetailsAndRelatedCallback;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;J)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private removeMyListeners()V
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->addToListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->addToListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rotateCaretTo(I)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private setupRecyclerViewHeader()V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupRecyclerViewItemDecoration()V
    .locals 5

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/ItemDecorationEdgePadding;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0
.end method


# virtual methods
.method protected findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->reload()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "actor_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorId:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0300ed

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->findViews(Landroid/view/View;)V

    new-instance v1, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setupRecyclerView()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDetach()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->removeMyListeners()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->rotateCaretTo(I)V

    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->reload()V

    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onRetryRequested()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->fetchData()V

    return-void
.end method

.method public resetScroll()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->getScrollDeltaY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearItemChecked()V

    :cond_1
    return-void
.end method

.method public setActorId(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->caret:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorId:Ljava/lang/String;

    return-void
.end method

.method public setImageTint(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->imageTint:I

    return-void
.end method

.method public setLayoutManagerSavedState(Landroid/os/Parcelable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->layoutManagerSavedState:Landroid/os/Parcelable;

    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 0

    return-void
.end method

.method public setStillImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->stillImageHeight:I

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->videoId:Ljava/lang/String;

    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RoleDetailsFrag"

    const-string/jumbo v1, "Attaching parallax scroll listener to recyclerView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->actorDetailsView:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$ActorDetailsView;->actorStillImg:Lcom/netflix/mediaclient/android/widget/FocalPointImageView;

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1, v4, v4}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createParallaxOnly(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected setupRecyclerView()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setupRecyclerViewLayoutManager()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setupRecyclerViewAdapter()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setupRecyclerViewItemDecoration()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->setupRecyclerViewHeader()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V

    invoke-direct {v0, v2, v2, v1}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->numColumns:I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v2, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
