.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "LoLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field protected static final EXTRA_GENRE_ID:Ljava/lang/String; = "genre_id"

.field protected static final EXTRA_GENRE_PARCEL:Ljava/lang/String; = "genre_parcel"

.field protected static final EXTRA_IS_GENRE_LIST:Ljava/lang/String; = "is_genre_list"

.field public static final NUM_LOMOS_TO_FETCH_PER_BATCH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "LoLoMoFrag"


# instance fields
.field private adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

.field private content:Landroid/widget/FrameLayout;

.field protected focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

.field protected genreId:Ljava/lang/String;

.field private isFirstLaunch:Z

.field private isGenreList:Z

.field protected final leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field protected listView:Landroid/widget/ListView;

.field private final recycleListener:Landroid/widget/AbsListView$RecyclerListener;

.field private final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

.field private wasInitPerformed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    .line 281
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 288
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->recycleListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;
    .locals 4

    .prologue
    .line 73
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;-><init>()V

    .line 75
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string/jumbo v0, "genre_id"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v3, "is_genre_list"

    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    :cond_0
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleInitIfReady()V
    .locals 3

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->wasInitPerformed:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Activity is null - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 244
    if-nez v0, :cond_2

    .line 245
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager not available - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    if-nez v1, :cond_3

    .line 250
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Views are not initialized - can\'t continue init"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->createAdapter()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    .line 258
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->wasInitPerformed:Z

    goto :goto_0
.end method

.method private setupErrorWrapper(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 134
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isGenreList:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->genreId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f030089

    return v0
.end method

.method getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getStateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method public getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    return-object v0
.end method

.method public hideLoadingAndErrorViews()V
    .locals 2

    .prologue
    .line 185
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Hiding loading and error views"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showViewIfHidden(Landroid/view/View;Z)V

    .line 188
    return-void
.end method

.method public isLoadingData()Z
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-nez v0, :cond_0

    .line 314
    const-string/jumbo v0, "NflxLoading"

    const-string/jumbo v1, "No adapter yet - not loading data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->isLoadingData()Z

    move-result v0

    .line 318
    const-string/jumbo v1, "NflxLoading"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "genre_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->genreId:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_genre_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isGenreList:Z

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;->getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->viewRecycler:Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;

    .line 95
    if-eqz p1, :cond_0

    .line 97
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Clearing all frag state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v2, "Creating frag view"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    .line 115
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isFirstLaunch:Z

    .line 116
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "LoLoMoFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateView: isFirstLaunch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isFirstLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupMainView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupFocushandler()V

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->setupErrorWrapper(Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->handleInitIfReady()V

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->content:Landroid/widget/FrameLayout;

    return-object v0

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 168
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onDestroyView()V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 176
    return-void
.end method

.method public onLolomoPrefetchComplete(Z)V
    .locals 4

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->isFirstLaunch:Z

    if-nez v0, :cond_1

    .line 332
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onLolomoPrefetchComplete: is not from cache or is not first launch to refresh CW"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/PrefetchLolomoABTestUtils;->hasJobScheduler(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Events;->LOLOMO_METADATA_FETCHED_EVENT:Lcom/netflix/mediaclient/service/logging/perf/Events;

    const-string/jumbo v2, "isFromCache"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 338
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onLolomoPrefetchComplete: lolomo data is from cache on a new app launch - refresh CW data from server"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->refreshCw(Z)V

    goto :goto_0
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Manager status code not okay"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->handleInitIfReady()V

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onPause()V

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->onResume()V

    .line 156
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->showLoadingView()V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->stateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->refreshData()V

    .line 182
    return-void
.end method

.method public setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->adapter:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected setupFocushandler()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->focusHandler:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFocusHandler;

    .line 130
    return-void
.end method

.method protected setupMainView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->recycleListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kids/KidsUtils;->configureListViewForKids(Landroid/widget/ListView;)V

    .line 144
    :cond_0
    return-void
.end method

.method public showErrorView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 195
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing error view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 197
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(Z)V

    .line 213
    return-void
.end method

.method public showLoadingView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    const-string/jumbo v0, "LoLoMoFrag"

    const-string/jumbo v1, "Showing loading view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->listView:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->hideView(Landroid/view/View;Z)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 219
    return-void
.end method
