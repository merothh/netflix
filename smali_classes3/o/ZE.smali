.class public Lo/ZE;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZE$Activity;,
        Lo/ZE$TaskDescription;
    }
.end annotation


# instance fields
.field private b:Lo/Am;

.field private f:Lcom/netflix/cl/model/AppView;

.field private h:Lo/EditText;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:J

.field private r:Z

.field private s:I

.field private t:I

.field private final y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ZE;->i:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lo/ZE;->f:Lcom/netflix/cl/model/AppView;

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lo/ZE;->l:Ljava/lang/String;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lo/ZE;->p:Z

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lo/ZE;->s:I

    const/16 v1, 0x26

    .line 89
    iput v1, p0, Lo/ZE;->t:I

    .line 90
    iput-boolean v0, p0, Lo/ZE;->r:Z

    .line 91
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/Zt$Activity;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lo/ZE;->y:I

    return-void
.end method

.method static synthetic a(Lo/ZE;)I
    .locals 0

    .line 49
    iget p0, p0, Lo/ZE;->y:I

    return p0
.end method

.method static synthetic a(Lo/ZE;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lo/ZE;->p:Z

    return p1
.end method

.method static synthetic b(Lo/ZE;I)I
    .locals 0

    .line 49
    iput p1, p0, Lo/ZE;->t:I

    return p1
.end method

.method static synthetic b(Lo/ZE;Lo/Am;)Lo/Am;
    .locals 0

    .line 49
    iput-object p1, p0, Lo/ZE;->b:Lo/Am;

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    .line 208
    sget v0, Lo/Zt$Application;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    iget-object p1, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lo/ZE;->getActivity()Lo/Serializable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 211
    new-instance p1, Lo/ZE$5;

    invoke-direct {p1, p0}, Lo/ZE$5;-><init>(Lo/ZE;)V

    .line 231
    iget-object v0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lo/ZE$3;

    iget-object v2, p0, Lo/ZE;->f:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, p0, p1, v2}, Lo/ZE$3;-><init>(Lo/ZE;Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method static synthetic b(Lo/ZE;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/ZE;->y()V

    return-void
.end method

.method static synthetic b(Lo/ZE;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/ZE;->c(Z)V

    return-void
.end method

.method static synthetic c(Lo/ZE;I)I
    .locals 0

    .line 49
    iput p1, p0, Lo/ZE;->s:I

    return p1
.end method

.method private c()V
    .locals 2

    .line 252
    iget-object v0, p0, Lo/ZE;->h:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->b(Z)V

    .line 253
    iget-object v0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    .line 247
    iget-object v0, p0, Lo/ZE;->h:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 248
    iget-object v0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lo/aeV;->d(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c(Lo/ZE;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lo/ZE;->r:Z

    return p0
.end method

.method static synthetic c(Lo/ZE;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lo/ZE;->r:Z

    return p1
.end method

.method static synthetic d(Lo/ZE;)I
    .locals 0

    .line 49
    iget p0, p0, Lo/ZE;->t:I

    return p0
.end method

.method static synthetic d(Lo/ZE;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lo/ZE;->k:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lo/ZE;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Title"

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/ZE;->m:Ljava/lang/String;

    const-string v2, "EntityId"

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lo/ZE;->n:Ljava/lang/String;

    const-string v2, "query"

    .line 184
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/ZE;->l:Ljava/lang/String;

    const-string v1, "ParentRefId"

    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/ZE;->o:Ljava/lang/String;

    const-string v1, "SearchResultType"

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    :try_start_0
    invoke-static {v0}, Lcom/netflix/cl/model/AppView;->valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/AppView;

    move-result-object v0

    iput-object v0, p0, Lo/ZE;->f:Lcom/netflix/cl/model/AppView;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SrchSuggestTitlGalleryFrag"

    const-string v2, "Bad intent"

    .line 192
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lo/ZE;->f:Lcom/netflix/cl/model/AppView;

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Z)V
    .locals 10

    .line 272
    iget-boolean v0, p0, Lo/ZE;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lo/ZE;->b:Lo/Am;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lo/ZE;->p:Z

    .line 283
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/ZE;->q:J

    .line 285
    iget-object v0, p0, Lo/ZE;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object p1, p0, Lo/ZE;->b:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    iget-object v1, p0, Lo/ZE;->k:Ljava/lang/String;

    iget v2, p0, Lo/ZE;->s:I

    iget v3, p0, Lo/ZE;->t:I

    .line 288
    invoke-static {}, Lo/adq;->d()Z

    move-result v4

    new-instance v5, Lo/ZE$TaskDescription;

    iget-wide v6, p0, Lo/ZE;->q:J

    invoke-direct {v5, p0, v6, v7}, Lo/ZE$TaskDescription;-><init>(Lo/ZE;J)V

    .line 286
    invoke-interface/range {v0 .. v5}, Lo/zG;->d(Ljava/lang/String;IIZLo/zU;)Z

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lo/ZE;->b:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    iget-object v2, p0, Lo/ZE;->n:Ljava/lang/String;

    sget-object p1, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    move-object v3, p1

    iget v4, p0, Lo/ZE;->s:I

    iget v5, p0, Lo/ZE;->t:I

    .line 295
    invoke-static {}, Lo/adq;->d()Z

    move-result v6

    new-instance v7, Lo/ZE$TaskDescription;

    iget-wide v8, p0, Lo/ZE;->q:J

    invoke-direct {v7, p0, v8, v9}, Lo/ZE$TaskDescription;-><init>(Lo/ZE;J)V

    .line 291
    invoke-interface/range {v1 .. v7}, Lo/zG;->a(Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;IIZLo/zU;)Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "SrchSuggestTitlGalleryFrag"

    const-string v0, "Manager is null/notReady - can\'t load data"

    .line 277
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Landroid/content/Intent;)Lo/ZE;
    .locals 3

    .line 95
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "Title"

    .line 98
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EntityId"

    .line 99
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ParentRefId"

    .line 100
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SearchResultType"

    .line 101
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query"

    .line 102
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    new-instance p0, Lo/ZE;

    invoke-direct {p0}, Lo/ZE;-><init>()V

    .line 106
    invoke-virtual {p0, v0}, Lo/ZE;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    .line 199
    new-instance v0, Lo/EditText;

    new-instance v1, Lo/ZE$4;

    invoke-direct {v1, p0}, Lo/ZE$4;-><init>(Lo/ZE;)V

    invoke-direct {v0, p1, v1}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lo/ZE;->h:Lo/EditText;

    return-void
.end method

.method static synthetic e(Lo/ZE;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lo/ZE;->d(Z)V

    return-void
.end method

.method static synthetic e(Lo/ZE;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lo/ZE;->p:Z

    return p0
.end method

.method static synthetic f(Lo/ZE;)Lcom/netflix/cl/model/AppView;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->f:Lcom/netflix/cl/model/AppView;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 257
    iget-object v0, p0, Lo/ZE;->h:Lo/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 258
    iget-object v0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/aeV;->c(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic g(Lo/ZE;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/ZE;->c()V

    return-void
.end method

.method static synthetic h(Lo/ZE;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lo/ZE;->q:J

    return-wide v0
.end method

.method static synthetic i(Lo/ZE;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lo/ZE;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lo/ZE;)I
    .locals 0

    .line 49
    iget p0, p0, Lo/ZE;->s:I

    return p0
.end method

.method static synthetic l(Lo/ZE;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m(Lo/ZE;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lo/ZE;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lo/ZE;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lo/ZE;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method private y()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lo/ZE;->g()V

    const/4 v0, 0x1

    .line 268
    invoke-direct {p0, v0}, Lo/ZE;->d(Z)V

    return-void
.end method


# virtual methods
.method public ad_()Z
    .locals 3

    .line 166
    invoke-virtual {p0}, Lo/ZE;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lo/ZE;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    iget-object v2, p0, Lo/ZE;->m:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public d(Landroid/view/View;)V
    .locals 5

    .line 375
    iget-object p1, p0, Lo/ZE;->h:Lo/EditText;

    if-eqz p1, :cond_0

    .line 376
    iget v0, p0, Lo/ZE;->d:I

    iget v1, p0, Lo/ZE;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lo/ZE;->g:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Lo/EditText;->c(IIII)V

    .line 378
    :cond_0
    iget-object p1, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lo/ZE;->y:I

    iget v2, p0, Lo/ZE;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lo/ZE;->c:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 380
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lo/ZE;->y:I

    iget v4, p0, Lo/ZE;->g:I

    add-int/2addr v3, v4

    .line 379
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 4

    .line 153
    invoke-virtual {p0}, Lo/ZE;->getActivity()Lo/Serializable;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {v0}, Lo/Exception;->e(Lo/Serializable;)Lo/Deprecated;

    move-result-object v0

    const-class v1, Lo/ZE$Activity;

    invoke-virtual {v0, v1}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object v0

    check-cast v0, Lo/ZE$Activity;

    .line 157
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, v0, Lo/ZE$Activity;->c:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v1, 0x0

    .line 158
    iput-object v1, v0, Lo/ZE$Activity;->c:Ljava/lang/Long;

    .line 159
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v3, v0, Lo/ZE$Activity;->b:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    .line 160
    iput-object v1, v0, Lo/ZE$Activity;->b:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lo/ZE;->p:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 114
    invoke-direct {p0}, Lo/ZE;->d()V

    .line 117
    sget p3, Lo/Zt$LoaderManager;->f:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Lo/ZE;->e(Landroid/view/View;)V

    .line 120
    invoke-direct {p0, p1}, Lo/ZE;->b(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lo/ZE;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    new-instance p3, Lo/ZE$1;

    invoke-direct {p3, p0}, Lo/ZE$1;-><init>(Lo/ZE;)V

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-object p1
.end method

.method public onResume()V
    .locals 5

    .line 135
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 139
    iget-object v0, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lo/ZE;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    instance-of v1, v1, Lo/MultiAutoCompleteTextView;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    check-cast v1, Lo/MultiAutoCompleteTextView;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 144
    iget-object v3, p0, Lo/ZE;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$Intent;

    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Lo/MultiAutoCompleteTextView;->b(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
