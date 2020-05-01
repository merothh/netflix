.class public Lcom/netflix/mediaclient/android/widget/SearchActionBar;
.super Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.source "SearchActionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchActionBar"


# instance fields
.field private clickDetector:Landroid/view/GestureDetector;

.field private editTextView:Landroid/widget/EditText;

.field private progressSpinner:Landroid/widget/ProgressBar;

.field protected searchView:Landroid/widget/SearchView;

.field private showVoiceSearch:Z

.field private voiceSearchBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 53
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;->showVoiceSearchInActionBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->showVoiceSearch:Z

    .line 55
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->initViews()V

    .line 57
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setupSearchView()V

    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->setupSearchManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->configureSearchViewTextView()V

    .line 61
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->configureSearchViewIcon()V

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->configureVoiceSearchExperience()V

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->updateBackgroundDrawables()V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/android/widget/SearchActionBar;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->clickDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private configureSearchViewIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:id/search_mag_icon"

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActiveSearchIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :cond_0
    return-void
.end method

.method private configureSearchViewTextView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:id/search_src_text"

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchViewTextColorResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 150
    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 154
    :cond_0
    return-void
.end method

.method private configureVoiceSearchExperience()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:id/search_voice_btn"

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "SPY-8468 - Voice search not available. SearchView doesn\'t have view with id search_voice_btn"

    .line 85
    const-string/jumbo v1, "SearchActionBar"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->showVoiceSearch:Z

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/util/ViewUtils$ClickGestureDetector;

    invoke-direct {v2}, Lcom/netflix/mediaclient/util/ViewUtils$ClickGestureDetector;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->clickDetector:Landroid/view/GestureDetector;

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;-><init>(Lcom/netflix/mediaclient/android/widget/SearchActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private getDrawableFromSystemId(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSystemImageView(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getSystemImageView(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_0

    .line 120
    const v0, 0x7f0f008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    .line 121
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v0, -0x1

    const/4 v3, -0x2

    const v4, 0x800005

    invoke-direct {v2, v0, v3, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 123
    const v0, 0x7f0f008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->progressSpinner:Landroid/widget/ProgressBar;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 126
    :cond_0
    return-void
.end method

.method private replaceBackgroundDrawable(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "SearchActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Couldn\'t find view for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setupSearchManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "search"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 114
    return-void
.end method

.method private setupSearchView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    const v1, 0x2000003

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0802b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setInputType(I)V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method private updateBackgroundDrawables()V
    .locals 2

    .prologue
    .line 173
    const-string/jumbo v0, "android:id/search_plate"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchViewBgResId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->replaceBackgroundDrawable(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v0, "android:id/submit_area"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchViewRightBgResId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->replaceBackgroundDrawable(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchCloseButtonTint()Ljava/lang/Integer;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v1, "android:id/search_close_btn"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getDrawableFromSystemId(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setDrawableTint(Landroid/graphics/drawable/Drawable;I)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getSearchVoiceButtonTint()Ljava/lang/Integer;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    const-string/jumbo v1, "android:id/search_voice_btn"

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->getDrawableFromSystemId(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setDrawableTint(Landroid/graphics/drawable/Drawable;I)V

    .line 191
    :cond_1
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 267
    :cond_0
    return-void
.end method

.method protected getActiveSearchIconResId()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f020137

    return v0
.end method

.method protected getSearchCloseButtonTint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSearchViewBgResId()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f0201d6

    return v0
.end method

.method protected getSearchViewRightBgResId()I
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->showVoiceSearch:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0201d8

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0e00ed

    goto :goto_0
.end method

.method protected getSearchViewTextColorResId()I
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f0e00b5

    return v0
.end method

.method protected getSearchVoiceButtonTint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceSearchBtn()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->voiceSearchBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideProgressSpinner()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->progressSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->progressSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 243
    return-void
.end method

.method public setOnTouchTextListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->editTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    :cond_0
    return-void
.end method

.method public setQuery(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 259
    return-void
.end method

.method public setSearchQueryHint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    return-void
.end method

.method public showProgressSpinner()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->progressSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->progressSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    :cond_0
    return-void
.end method
