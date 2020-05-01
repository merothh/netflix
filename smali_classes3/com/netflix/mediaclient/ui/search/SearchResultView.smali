.class public Lcom/netflix/mediaclient/ui/search/SearchResultView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/CY;
.implements Lo/Df;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;,
        Lcom/netflix/mediaclient/ui/search/SearchResultView$Activity;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field private b:I

.field private c:Lo/ResourceCursorAdapter;

.field d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field protected e:Landroid/widget/TextView;

.field private f:Lcom/netflix/cl/model/AppView;

.field private g:Ljava/lang/String;

.field private h:Lo/GridView;

.field private i:Ljava/lang/String;

.field private j:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->j:Z

    .line 57
    sget-object p1, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->f:Lcom/netflix/cl/model/AppView;

    .line 84
    iput p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b:I

    .line 85
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Lcom/netflix/cl/model/AppView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->f:Lcom/netflix/cl/model/AppView;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 95
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 97
    iget v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->f()V

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->j()V

    .line 103
    invoke-static {}, Lo/ady;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lo/LR;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, p0, v2}, Lo/LR;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;Lo/Df;Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/search/SearchResultView$Activity;

    invoke-direct {v1, p0, v0, p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView$Activity;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/CY;)V

    :goto_0
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->c:Lo/ResourceCursorAdapter;

    return-void
.end method

.method private b(Lcom/netflix/model/leafs/SearchCollectionEntity;Lo/Bx;Lio/reactivex/SingleObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/SearchCollectionEntity;",
            "Lo/Bx;",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "Video"

    .line 162
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTag(Ljava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/netflix/cl/model/AppView;->searchTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->f:Lcom/netflix/cl/model/AppView;

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->h:Lo/GridView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->h:Lo/GridView;

    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 173
    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    .line 174
    invoke-virtual {v1, p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lio/reactivex/SingleObserver;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p3

    .line 171
    invoke-virtual {v0, p3}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 176
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->h:Lo/GridView;

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->c:Lo/ResourceCursorAdapter;

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1, p0, p2, p3}, Lo/ResourceCursorAdapter;->b(Landroid/view/View;Lo/AR;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method private b(Lo/By;Ljava/lang/String;)V
    .locals 4

    .line 255
    invoke-interface {p1}, Lo/By;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "Suggestion"

    .line 258
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setTag(Ljava/lang/Object;)V

    .line 259
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->f:Lcom/netflix/cl/model/AppView;

    .line 261
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->l:Z

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    sget v2, Lo/Zt$TaskDescription;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/Zt$Activity;->e:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->h:Lo/GridView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 272
    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 275
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->j:Z

    if-nez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->c:Lo/ResourceCursorAdapter;

    invoke-virtual {v0, p0}, Lo/ResourceCursorAdapter;->d(Landroid/view/View;)V

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;

    invoke-interface {p1}, Lo/By;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->m:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 217
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_2

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 224
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->a()I

    move-result p1

    .line 227
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-interface {v1, v2, v0, p2, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 130
    sget v0, Lo/Zt$Application;->q:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->h:Lo/GridView;

    .line 131
    sget v0, Lo/Zt$Application;->s:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    return-void
.end method

.method private j()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 4

    .line 234
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 235
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 237
    sget v2, Lo/Zt$ActionBar;->d:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 238
    iget v0, v0, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->o:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public e(Lo/By;Lo/Bx;Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/By;",
            "Lo/Bx;",
            "Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)V"
        }
    .end annotation

    .line 141
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->m:Ljava/lang/String;

    .line 143
    sget-object p5, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    if-ne p3, p5, :cond_0

    .line 144
    check-cast p1, Lcom/netflix/model/leafs/SearchCollectionEntity;

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchCollectionEntity;->getVideoId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->g:Ljava/lang/String;

    .line 145
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->i:Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2, p6}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b(Lcom/netflix/model/leafs/SearchCollectionEntity;Lo/Bx;Lio/reactivex/SingleObserver;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {p1}, Lo/By;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->g:Ljava/lang/String;

    .line 149
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->i:Ljava/lang/String;

    .line 150
    invoke-interface {p1}, Lo/By;->getEntityId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->o:Ljava/lang/String;

    .line 151
    invoke-interface {p1}, Lo/By;->getEnableTitleGroupTreatment()Z

    move-result p2

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->l:Z

    .line 152
    invoke-direct {p0, p1, p4}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b(Lo/By;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPlayablId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lo/Application;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->g:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public o()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->j()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoreClicks()V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->j:Z

    return-void
.end method

.method public setTitleTextWithSelectdHighlighting()V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->a()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :goto_0
    return-void
.end method
