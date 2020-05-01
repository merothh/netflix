.class public Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "SearchResultsFrag.java"


# static fields
.field private static final INSTANCE_STATE_CLICK_HISTORY:Ljava/lang/String; = "instance_state__click_history"

.field private static final INSTANCE_STATE_PEOPLE_SELECTED_POS:Ljava/lang/String; = "instance_state_people_selected_pos"

.field private static final INSTANCE_STATE_QUERY:Ljava/lang/String; = "instance_state_query"

.field private static final INSTANCE_STATE_SUGGESTIONS_SELECTED_POS:Ljava/lang/String; = "instance_state_suggestions_selected_pos"

.field private static final TAG:Ljava/lang/String; = "SearchResultsFrag"


# instance fields
.field private adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

.field private adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

.field private adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

.field private final clickPresseHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/search/SearchItemClick;",
            ">;"
        }
    .end annotation
.end field

.field private currentlyDisplaying:Ljava/lang/String;

.field private gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

.field private imgHeightPeople:I

.field private imgHeightVideo:I

.field private imgWidthVideo:I

.field private labelPeople:Landroid/widget/TextView;

.field private labelSuggestions:Landroid/widget/TextView;

.field private labelVideos:Landroid/widget/TextView;

.field private layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

.field private layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

.field private maxResultsPeople:I

.field private maxResultsSuggestions:I

.field private maxResultsVideos:I

.field private peopleSelectedPos:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private query:Ljava/lang/String;

.field private relatedlabel:Landroid/widget/TextView;

.field private results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

.field private scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

.field private scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

.field private secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field private simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

.field private final state:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

.field private suggestionsSelectedPos:I

.field private trackableTitles:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    iput v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->state:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onSuggestionClick(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onPeopleClick(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    return v0
.end method

.method static synthetic access$1402(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    return p1
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    return v0
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    return p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightPeople:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->trackableTitles:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->trackableTitles:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->hideKeyboard()V

    return-void
.end method

.method private addToClickHistory(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Landroid/view/View;IJ)V
    .locals 10

    const v8, 0x7f0f000f

    invoke-virtual {p2, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    iget v0, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    if-eq v0, p3, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    move-object v0, p2

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/ui/search/SearchItemClick;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;IJLjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v8, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private clearGridSelections()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->clearTitleTextHighlighting()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->clearTitleTextHighlighting()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clearLayoutSelections()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->clearTitleTextHighlighting()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->clearTitleTextHighlighting()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clearSelections()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearGridSelections()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearLayoutSelections()V

    return-void
.end method

.method public static create()Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;-><init>()V

    return-object v0
.end method

.method private fetchPeopleVideoData(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SearchResultsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t load data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;-><init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupGridViewObserverForTitles(Lcom/netflix/mediaclient/android/widget/StaticGridView;)V

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    const/16 v7, 0x28

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;JLjava/lang/String;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    invoke-interface {v6, p1, v7, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSimilarVideosForPerson(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private fetchSuggestedVideoData(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SearchResultsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t load data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;-><init>(Landroid/app/Activity;Landroid/widget/GridView;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->simAdapter:Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupGridViewObserverForTitles(Lcom/netflix/mediaclient/android/widget/StaticGridView;)V

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    const/16 v7, 0x28

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$OnSimsFetchedCallback;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;JLjava/lang/String;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    invoke-interface {v6, p1, v7, v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchSimilarVideosForQuerySuggestion(Ljava/lang/String;ILcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0f0348

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const v0, 0x7f0f0349

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    const v0, 0x7f0f0344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const v0, 0x7f0f0346

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const v0, 0x7f0f0347

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelSuggestions:Landroid/widget/TextView;

    const v0, 0x7f0f034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    const v0, 0x7f0f034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    const v0, 0x7f0f0342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    const v0, 0x7f0f00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    const v0, 0x7f0f0343

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelVideos:Landroid/widget/TextView;

    const v0, 0x7f0f0345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelPeople:Landroid/widget/TextView;

    const v0, 0x7f0f0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public static getItem(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsSuggestions(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-interface {p0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsVideos(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-interface {p0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsPeople(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getItemIdsForRange(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;II)[Ljava/lang/String;
    .locals 2

    if-ge p3, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-gt p2, p3, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-static {v1, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getItem(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getSearchObjectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private getReferenceId(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;->getReferenceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideKeyboard()V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->forceHideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method private highlightTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getPlayablId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTitleTextWithSelectdHighlighting()V

    return-object v0
.end method

.method private notifyAdapters()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsVideos:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->setMaxCount(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsPeople:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->setMaxCount(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsSuggestions:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->setMaxCount(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private onPeopleClick(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 7

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->hideKeyboard()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearSelections()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->highlightTitle(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->updateSimilarLabel(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fetchPeopleVideoData(Ljava/lang/String;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->addToClickHistory(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onSuggestionClick(Lcom/netflix/mediaclient/ui/search/SearchResultView;IJ)V
    .locals 7

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->hideKeyboard()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearSelections()V

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->highlightTitle(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->updateSimilarLabel(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fetchSuggestedVideoData(Ljava/lang/String;)V

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->addToClickHistory(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resetGridViews()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupVideosGridView()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupPeopleGridView()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupSuggestionsGridView()V

    return-void
.end method

.method private resetPeopleLayout(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsPeople()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getMaxResultsPeople(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getPeopleListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v3, v2, v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsPeople(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchViewLayoutPeople()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/netflix/mediaclient/ui/search/SearchResultView;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v3, p1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->generateDefaultLayoutParams()Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v3, v5, v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)V

    invoke-virtual {v5, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetScrollPosition()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->scrollTo(II)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method private resetSuggestionsLayout(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsSuggestions()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getMaxResultsRelated(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getSuggestionsListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v3, v2, v0}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v4, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsSuggestions(I)Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    move-result-object v4

    new-instance v5, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchViewLayoutRelated()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/netflix/mediaclient/ui/search/SearchResultView;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v3, p1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->update(Ljava/lang/Object;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->generateDefaultLayoutParams()Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    invoke-virtual {v3, v5, v2}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)V

    invoke-virtual {v5, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupGridViewObserver(Lcom/netflix/mediaclient/android/widget/StaticGridView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/widget/StaticGridView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setupGridViewObserverForTitles(Lcom/netflix/mediaclient/android/widget/StaticGridView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/android/widget/StaticGridView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setupImageDimensions()V
    .locals 8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->getWidth()I

    move-result v0

    :goto_1
    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_2

    div-int v2, v0, v1

    iput v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgWidthVideo:I

    div-int v1, v0, v1

    int-to-double v2, v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getVideoImageAspectRatio()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    iput v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightVideo:I

    const-string/jumbo v1, "SearchResultsFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "imgHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightVideo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumPeopleGridCols(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-ne v2, v3, :cond_0

    if-lez v1, :cond_0

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getPeopleImageAspectRatio()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightPeople:I

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightPeople:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightPeople:I

    const-string/jumbo v0, "SearchResultsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "imgHeightPeople: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->imgHeightPeople:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private setupLabels()V
    .locals 5

    const v4, 0x7f080220

    const v3, 0x7f0801c6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelSuggestions:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelSuggestions:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldUpperCaseTitleLabels()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelPeople:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelPeople:Landroid/widget/TextView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldUpperCaseTitleLabels()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelVideos:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelVideos:Landroid/widget/TextView;

    const v2, 0x7f08019f

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setupPeopleGridView()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldOpenNewActivityForRelated()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterPeople:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldOpenNewActivityForRelated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupPeopleOnItemClick()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumPeopleGridCols(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupPeopleOnItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private setupScrollViewKeyboardHiding()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method private setupScrollViewLogging()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ScrollLoggingListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$ScrollLoggingListener;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setOnScrollStopListener(Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView2:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->setOnScrollStopListener(Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;)V

    :cond_1
    return-void
.end method

.method private setupScrollViews(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupScrollViewKeyboardHiding()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupScrollViewLogging()V

    return-void
.end method

.method private setupSuggestionsGridView()V
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldOpenNewActivityForRelated()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Z)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterSuggestions:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldOpenNewActivityForRelated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupSuggestionsOnItemClick()V

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumRelatedGridCols(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupSuggestionsOnItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private setupVideosGridView()V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->adapterVideos:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldOpenNewActivityForRelated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupSuggestionsOnItemClick()V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupGridViewObserver(Lcom/netflix/mediaclient/android/widget/StaticGridView;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getNumVideoGridCols(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private updateLabelVisibilty()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelVideos:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsVideos()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelPeople:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsPeople()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->labelSuggestions:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsSuggestions()I

    move-result v3

    if-lez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateMaxResults()V
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getMaxResultsRelated(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsSuggestions:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getMaxResultsPeople(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsPeople:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getMaxResultsVideos(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->maxResultsVideos:I

    return-void
.end method

.method private updateSimilarLabel(Landroid/view/View;)V
    .locals 2

    check-cast p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->currentlyDisplaying:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->currentlyDisplaying:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->currentlyDisplaying:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearGridSelected()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    return-void
.end method

.method public clearSelectedStack()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public fireGridViewVideosImpressionEvents()V
    .locals 9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewVideos:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$7;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchResultsFrag$SearchCategory:[I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->titleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    :goto_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->searchResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v5, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v4

    :goto_1
    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getReferenceId(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchImpression(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;[Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    :cond_0
    return-void

    :pswitch_0
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->suggestionTitleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0

    :pswitch_1
    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->peopleTitleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->trackableTitles:Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fireImpressionEvents()V
    .locals 9

    const-wide/16 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->fireGridViewVideosImpressionEvents()V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->searchResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getPeopleListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getReferenceId(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->peopleResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchImpression(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;[Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->getVisiblePositions(Lcom/netflix/mediaclient/android/widget/StaticGridView;Landroid/widget/ScrollView;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->searchResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getSuggestionsListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getReferenceId(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->suggestionResults:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchImpression(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;[Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    :cond_1
    return-void
.end method

.method public getSearchObjectId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown search result type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handlePrefetchDPData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->prefetchDPForSearch(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/util/List;)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchFragLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->findViews(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupLabels()V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->state:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    invoke-virtual {v1, p3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restore(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->suggestionsSelectedPos:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->peopleSelectedPos:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupVideosGridView()V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupPeopleGridView()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupSuggestionsGridView()V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupScrollViews(Landroid/view/View;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->state:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->save(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->notifyAdapters()V

    return-void
.end method

.method public showLastSelectedItem()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clickPresseHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->currentlyDisplaying:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->displayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->currentlyDisplaying:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v4, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-ne v3, v4, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget v2, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewSuggestions:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    :goto_0
    if-eqz v1, :cond_1

    iget v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    iget-wide v4, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutSuggestions:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iget v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->searchCategory:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v4, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-ne v3, v4, :cond_5

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    iget v2, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->gridViewPeople:Lcom/netflix/mediaclient/android/widget/StaticGridView;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->layoutPeople:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iget v3, v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;->position:I

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    const-string/jumbo v0, "SearchResultsFrag"

    const-string/jumbo v1, "Updating..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->scrollView:Lcom/netflix/mediaclient/android/widget/LoggingScrollView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsPeople()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getNumResultsSuggestions()I

    move-result v0

    if-lez v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->secondarySearch:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->query:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearSelectedStack()V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->relatedlabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->setupImageDimensions()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->updateMaxResults()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->updateLabelVisibilty()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->resetGridViews()V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->resetPeopleLayout(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->resetSuggestionsLayout(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->notifyAdapters()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->resetScrollPosition()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->results:Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;->getResultsVideos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->handlePrefetchDPData(Ljava/util/List;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method
