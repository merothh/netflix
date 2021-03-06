.class public Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
.source "GalleryGenresLoMoFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryGenresLoMoFrag"


# instance fields
.field private adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

.field private hasMoreData:Z

.field private numColumns:I

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->startIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->numColumns:I

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->hasMoreData:Z

    return v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->hasMoreData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->startIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->startIndex:I

    return p1
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;
    .locals 4

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "genre_id"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "is_genre_list"

    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNumColums()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getGalleryLomoGenreNumColumns(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->numColumns:I

    return-void
.end method

.method private setupRecyclerViewAdapter()V
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->numColumns:I

    new-instance v3, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setupRecyclerViewLayoutManager()V
    .locals 4

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->numColumns:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->numColumns:I

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03007a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0300ed

    goto :goto_0
.end method

.method protected getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string/jumbo v0, "GalleryGenresLoMoFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GalleryGenresLoMoFrag"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->genreId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->startIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->fetchData()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->showLoadingView()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->startIndex:I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->clearData()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->adapter:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag$ProgressiveAdapter;->fetchData()V

    return-void
.end method

.method protected setupFocushandler()V
    .locals 0

    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->setNumColums()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->setupRecyclerViewLayoutManager()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenresLoMoFrag;->setupRecyclerViewAdapter()V

    return-void
.end method
