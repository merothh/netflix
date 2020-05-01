.class public Lcom/netflix/mediaclient/ui/search/SearchActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "SearchActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final EXTRA_SUBMIT_QUERY:Ljava/lang/String; = "submit"

.field private static final MIN_SEARCH_QUERY_LENGTH:I = 0x1

.field private static final SEARCH_VIEW_FOCUSED_STATE:Ljava/lang/String; = "search_view_focused_state"

.field private static final TAG:Ljava/lang/String; = "SearchActivity"

.field private static final VIDEOS_FRAG_TAG:Ljava/lang/String; = "videos_frag"


# instance fields
.field private final errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private focusSessionId:J

.field private fragGroup:Landroid/view/ViewGroup;

.field private final handleQueryUpdateRunnable:Ljava/lang/Runnable;

.field private isLoading:Z

.field protected leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

.field private loadingWrapper:Landroid/view/View;

.field private loggingSessionId:J

.field private mVoiceSearchAvailable:Z

.field private mVoiceSearchBtn:Landroid/view/View;

.field private pendingAction:Ljava/lang/Runnable;

.field private query:Ljava/lang/String;

.field private requestId:J

.field private resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

.field private savedInstanceState:Landroid/os/Bundle;

.field private searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

.field private final searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private searchViewFocused:Z

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

.field private voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    .line 480
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 487
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$6;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    .line 515
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$7;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/android/widget/SearchActionBar;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->reportUiViewChanged(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showResults(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->focusSessionId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/search/SearchActivity;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->focusSessionId:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/search/SearchActivity;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/search/SearchActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/ui/search/SearchActivity;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isLoading:Z

    return p1
.end method

.method private addResetQueryOnTouch()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnTouchTextListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    return-void
.end method

.method public static create(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createUI()V
    .locals 3

    .prologue
    .line 147
    const v0, 0x7f0300ee

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setContentView(I)V

    .line 148
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupActionBar()V

    .line 149
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViews()V

    .line 150
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupLoadingWrapper()V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setupFragments(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->getErrorMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeShadow(Landroid/widget/TextView;)V

    .line 159
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 173
    const v0, 0x7f0f033d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    .line 174
    const v0, 0x7f0f033b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loadingWrapper:Landroid/view/View;

    .line 175
    const v0, 0x7f0f033c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void
.end method

.method private getSearchHintPlaceholderStringId()I
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801f8

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0802b4

    goto :goto_0
.end method

.method private handleKeyboardVisibility()V
    .locals 2

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->showSoftKeyboard(Landroid/content/Context;)Z

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    if-eqz v1, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 403
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showHideKeyboard(Z)V

    .line 404
    return-void
.end method

.method private handleNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v1, "SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received intent with action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string/jumbo v1, "SearchActivity"

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 303
    :cond_0
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string/jumbo v1, "submit"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isVoiceSearch(Landroid/content/Intent;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 309
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    .line 312
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setQuery(Ljava/lang/String;Z)V

    .line 314
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleQueryUpdate(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 337
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->clearGridSelected()V

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    .line 345
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 348
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showInitState()V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-nez v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->pendingAction:Ljava/lang/Runnable;

    goto :goto_0

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleQueryUpdateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 0

    .prologue
    .line 468
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 469
    return-void
.end method

.method private isVoiceSearch(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    const-string/jumbo v2, "android.speech.extra"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Voice search"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x1

    .line 333
    :goto_0
    return v0

    .line 332
    :cond_1
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Not voice search?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVoiceClicked()V
    .locals 4

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 436
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    .line 436
    invoke-static {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "Voice search button was clicked but no voice search icon in SearchView to trigger voice search dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static search(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "submit"

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method private setSearchActionBarQueryHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setSearchQueryHint(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method private setSearchProgressVisibility(Z)V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 507
    if-eqz p1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->showProgressSpinner()V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->hideProgressSpinner()V

    goto :goto_0
.end method

.method private setVoiceSearchVisibility(Z)V
    .locals 4

    .prologue
    .line 421
    const/16 v0, 0x8

    .line 422
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    if-eqz v1, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const-string/jumbo v1, "SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting voice search visibility - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchBtn:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldResetQueryOnTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->addResetQueryOnTouch()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    .line 230
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getVoiceSearchBtn()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->mVoiceSearchAvailable:Z

    .line 232
    :cond_1
    return-void

    .line 230
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupFragments(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->create()Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0f033d

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string/jumbo v3, "videos_frag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 189
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->showInitState()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "videos_frag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    goto :goto_0
.end method

.method private setupLoadingWrapper()V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loadingWrapper:Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->errorsCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;-><init>(Landroid/view/View;Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 199
    return-void
.end method

.method private showEmpty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f0801aa

    invoke-virtual {v0, v1, v2, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 365
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 366
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 367
    return-void
.end method

.method private showHideKeyboard(Z)V
    .locals 1

    .prologue
    .line 407
    if-eqz p1, :cond_1

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->requestFocus()Z

    .line 411
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->showSoftKeyboard(Landroid/app/Activity;)V

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchActionBar:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->clearFocus()V

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method private showInitState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 378
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 379
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getSearchHintPlaceholderStringId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchActionBarQueryHint(Ljava/lang/String;)V

    .line 380
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->showVoiceSearchInLayout(Landroid/content/Context;)Z

    move-result v0

    .line 381
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getInitMessageStringId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    goto :goto_0
.end method

.method private showResults(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 453
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 454
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->voiceSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->hideSoftKeyboard()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->update(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Ljava/lang/String;)V

    .line 465
    :cond_1
    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/kubrick_kids/search/KubrickKidsSearchActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/search/KubrickKidsSearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity$4;-><init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V

    return-object v0
.end method

.method protected getInitMessageStringId()I
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801f8

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0802b3

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->shouldHandleBackPress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->resultsFrag:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->showLastSelectedItem()Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->isLoading:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 102
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    .line 108
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b01b2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setTheme(I)V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->createUI()V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    const-string/jumbo v0, "search_view_focused_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    .line 117
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->startVoiceSearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->onVoiceClicked()V

    .line 121
    :cond_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->query:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchSessionStarted(JLandroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loggingSessionId:J

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 129
    return-void

    .line 105
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchUtils;->setSearchExperience(Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->requestId:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->loggingSessionId:J

    invoke-static {v0, v1, p0, v2, v3}, Lcom/netflix/mediaclient/service/logging/search/utils/SearchLogUtils;->reportSearchSessionEnded(JLandroid/content/Context;J)V

    .line 169
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 170
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleNewIntent(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->handleKeyboardVisibility()V

    .line 135
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 143
    :cond_0
    const-string/jumbo v0, "search_view_focused_state"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->searchViewFocused:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public showError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const v1, 0x7f08012e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showErrorView(IZZ)V

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity;->fragGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 372
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setVoiceSearchVisibility(Z)V

    .line 373
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->setSearchProgressVisibility(Z)V

    .line 374
    return-void
.end method
