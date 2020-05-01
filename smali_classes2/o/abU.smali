.class public final Lo/abU;
.super Lo/acc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abU$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/abU$StateListAnimator;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final i:Lo/ams;

.field private final o:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/abU;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "tooltip"

    const-string v4, "getTooltip()Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedTooltip;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/abU;->e:[Lo/amT;

    new-instance v0, Lo/abU$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abU$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/abU;->a:Lo/abU$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lo/acc;-><init>(Landroid/content/Context;ZZ)V

    iput-object p4, p0, Lo/abU;->o:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 69
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ub:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/abU;->i:Lo/ams;

    if-eqz p3, :cond_0

    const/16 p1, 0x8

    .line 73
    invoke-virtual {p0, p1}, Lo/abU;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lo/abU;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/abU$Application;

    invoke-direct {v1, p0, p1}, Lo/abU$Application;-><init>(Lo/abU;Landroid/view/View;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    .line 188
    invoke-direct {p0, p1}, Lo/abU;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/abU;->setBackgroundResource(I)V

    .line 191
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/abU;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->tT:I

    invoke-virtual {p0, v2}, Lo/abU;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    const-string v3, "bgImg"

    .line 196
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/GridView;->setAlpha(F)V

    .line 199
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    const/4 v3, 0x1

    .line 200
    invoke-virtual {p1, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 201
    new-instance v3, Lo/abU$PendingIntent;

    invoke-direct {v3, v0, v1, v2}, Lo/abU$PendingIntent;-><init>(JLo/GridView;)V

    check-cast v3, Lio/reactivex/SingleObserver;

    invoke-virtual {p1, v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lio/reactivex/SingleObserver;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 198
    invoke-virtual {v2, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 98
    iget-boolean v0, p0, Lo/abU;->g:Z

    const-string v1, "gift"

    const-string v2, "context"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/abU;->j:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->aO:I

    goto :goto_0

    .line 114
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->am:I

    .line 116
    :goto_0
    invoke-virtual {p0}, Lo/abU;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Lo/abU;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_3

    .line 99
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lo/abU;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    move-result-object p2

    .line 100
    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 101
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->aM:I

    goto :goto_2

    .line 103
    :cond_3
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ai:I

    .line 106
    :goto_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lo/abU;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->b()I

    move-result p2

    invoke-virtual {p0}, Lo/abU;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x1

    .line 108
    invoke-virtual {p0}, Lo/abU;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lo/abU;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v1, p2

    .line 106
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    :goto_3
    return-object p1
.end method

.method public static final synthetic b(Lo/abU;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/abU;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 254
    iget-object v0, p0, Lo/abU;->o:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->a:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->d:Ljava/lang/String;

    .line 255
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://assets.nflxext.com/ffe/siteui/acquisition/referral/mobile/android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic b(Lo/abU;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/abU;->a(Landroid/view/View;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/ums/ThemeAsset;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x30a86b81

    if-eq v0, v1, :cond_3

    const v1, 0x32afd5

    if-eq v0, v1, :cond_2

    const v1, 0x590228f

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "azure"

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->e:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    goto :goto_1

    :cond_2
    const-string v0, "lime"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->c:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    goto :goto_1

    :cond_3
    const-string v0, "violet"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->a:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    goto :goto_1

    .line 250
    :cond_4
    :goto_0
    sget-object p1, Lcom/netflix/mediaclient/ui/ums/ThemeAsset;->d:Lcom/netflix/mediaclient/ui/ums/ThemeAsset;

    :goto_1
    return-object p1
.end method

.method public static final synthetic c(Lo/abU;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/abU;->e(Landroid/view/View;)V

    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 5

    .line 283
    invoke-virtual {p0}, Lo/abU;->e()Lo/abW;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 287
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    .line 288
    aget v3, v2, v3

    invoke-virtual {p0}, Lo/abU;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lo/abU;->setY(F)V

    const/4 v3, 0x0

    .line 292
    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    add-int/2addr v2, p1

    .line 293
    invoke-virtual {v0}, Lo/abW;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lo/abU;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aU:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 294
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-virtual {v0}, Lo/abW;->c()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 296
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-gt v3, v2, :cond_1

    if-ge v4, v2, :cond_3

    .line 297
    :cond_1
    invoke-static {}, Lo/afw;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    iget p1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 299
    :goto_0
    invoke-virtual {v0}, Lo/abW;->getX()F

    move-result v3

    sub-int p1, v2, p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    invoke-virtual {v0, v3}, Lo/abW;->setX(F)V

    .line 304
    :cond_3
    invoke-virtual {v0}, Lo/abW;->e()Landroid/view/View;

    move-result-object p1

    int-to-float v2, v2

    .line 305
    invoke-virtual {v0}, Lo/abW;->getX()F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setX(F)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 80
    iget-boolean v0, p0, Lo/abU;->j:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fW:I

    goto :goto_0

    .line 81
    :cond_0
    iget-boolean v0, p0, Lo/abU;->g:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fZ:I

    goto :goto_0

    .line 82
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fX:I

    :goto_0
    return v0
.end method

.method protected b()I
    .locals 1

    .line 222
    iget-boolean v0, p0, Lo/abU;->g:Z

    if-eqz v0, :cond_0

    .line 223
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->Y:I

    goto :goto_0

    .line 225
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->af:I

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 4

    .line 167
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "Uma Tooltip showTooltip start"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lo/abU;->setAlpha(F)V

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lo/abU;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lo/abU;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 174
    new-instance v1, Lo/abU$ActionBar;

    invoke-direct {v1, p0}, Lo/abU$ActionBar;-><init>(Lo/abU;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lo/abU$TaskDescription;

    invoke-direct {v1, p0}, Lo/abU$TaskDescription;-><init>(Lo/abU;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 135
    iget-boolean v0, p0, Lo/abU;->j:Z

    if-eqz v0, :cond_1

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$dismiss$logAndRemove$1;-><init>(Lo/abU;)V

    check-cast v0, Lo/alB;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {p0, p1}, Lo/abU;->setAlpha(F)V

    .line 142
    invoke-virtual {p0}, Lo/abU;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    .line 144
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 145
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 146
    new-instance v1, Lo/abU$Activity;

    invoke-direct {v1, v0}, Lo/abU$Activity;-><init>(Lo/alB;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_1
    invoke-super {p0, p1}, Lo/acc;->c(Z)V

    :goto_0
    return-void
.end method

.method protected d()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lo/abU;->j:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/abU;->d:Landroid/widget/TextView;

    const-string v1, "mBody"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/abU;->e(Ljava/lang/String;)Z

    .line 124
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cL:I

    invoke-virtual {p0, v0}, Lo/abU;->setBackgroundResource(I)V

    .line 125
    invoke-virtual {p0}, Lo/abU;->j()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-super {p0}, Lo/acc;->d()V

    .line 128
    iget-boolean v0, p0, Lo/abU;->g:Z

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->themeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/abU;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 1

    const-string v0, "umaAlert"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 163
    invoke-virtual {p0}, Lo/abU;->d()V

    return-void
.end method

.method public final e()Lo/abW;
    .locals 3

    iget-object v0, p0, Lo/abU;->i:Lo/ams;

    sget-object v1, Lo/abU;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/abW;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 2

    .line 86
    iget-object v0, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->themeName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$setIconResource$iconDrawable$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaThemedView$setIconResource$iconDrawable$1;-><init>(Lo/abU;)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Lo/acc;->e(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lo/abU;->c:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected f()I
    .locals 1

    .line 230
    iget-boolean v0, p0, Lo/abU;->g:Z

    if-eqz v0, :cond_0

    .line 231
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->ac:I

    goto :goto_0

    .line 233
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->V:I

    :goto_0
    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i()I
    .locals 2

    .line 237
    invoke-virtual {p0}, Lo/abU;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 4

    .line 259
    iget-boolean v0, p0, Lo/abU;->j:Z

    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {p0}, Lo/abU;->e()Lo/abW;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    .line 261
    :cond_0
    iget-object v1, p0, Lo/abU;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipCtas()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 262
    invoke-static {v1, v3}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 263
    :goto_0
    invoke-virtual {p0, v3}, Lo/abU;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/abW;->setClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 265
    invoke-static {v1, v2}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 266
    :cond_2
    invoke-virtual {p0, v2}, Lo/abU;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abW;->setCloseClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 269
    :cond_3
    invoke-super {p0}, Lo/acc;->j()V

    :goto_1
    return-void
.end method
