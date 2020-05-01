.class public final Lo/StatsLogEventWrapper;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/StatsLogEventWrapper$ActionBar;,
        Lo/StatsLogEventWrapper$Activity;
    }
.end annotation


# static fields
.field private static A:Lo/WebStorage;

.field public static final b:Lo/StatsLogEventWrapper$Activity;

.field static final synthetic c:[Lo/amT;

.field private static final z:Lo/aka;


# instance fields
.field private final B:Lo/StatsLogEventWrapper$ActionBar;

.field private final a:Lo/ams;

.field private d:Z

.field private final e:Landroid/graphics/Paint;

.field private f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private g:Z

.field private final h:Landroid/graphics/Rect;

.field private i:Lo/StatsDimensionsValue;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/drawable/ColorDrawable;

.field private l:Z

.field private m:Z

.field private n:Lo/WebResourceError;

.field private final o:[I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Lo/HeaderViewListAdapter;

.field private final s:[I

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private final v:Lo/StatsLogEventWrapper$TaskDescription;

.field private final w:Lo/SimpleClock$Activity;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/amT;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lo/StatsLogEventWrapper;

    invoke-static {v2}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v2

    const-string v3, "thumbLottie"

    const-string v4, "getThumbLottie()Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v1

    check-cast v1, Lo/amT;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/StatsLogEventWrapper;->c:[Lo/amT;

    new-instance v0, Lo/StatsLogEventWrapper$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/StatsLogEventWrapper$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/StatsLogEventWrapper;->b:Lo/StatsLogEventWrapper$Activity;

    .line 62
    sget-object v0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2;->d:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlayLottie$Companion$ratingsCompositionCreator$2;

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    sput-object v0, Lo/StatsLogEventWrapper;->z:Lo/aka;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/SimpleClock$Activity;Lo/StatsLogEventWrapper$ActionBar;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRateListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityStrings"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/StatsLogEventWrapper;->w:Lo/SimpleClock$Activity;

    iput-object p3, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    .line 84
    sget p2, Lo/IHwInterface$FragmentManager;->H:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/StatsLogEventWrapper;->a:Lo/ams;

    .line 86
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/StatsLogEventWrapper;->e:Landroid/graphics/Paint;

    .line 90
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    .line 91
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p0, Lo/StatsLogEventWrapper;->l:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 96
    iput-object v0, p0, Lo/StatsLogEventWrapper;->o:[I

    new-array v0, p3, [I

    .line 97
    iput-object v0, p0, Lo/StatsLogEventWrapper;->s:[I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lo/StatsLogEventWrapper;->p:Ljava/util/List;

    .line 106
    new-instance v0, Lo/StatsLogEventWrapper$TaskDescription;

    invoke-direct {v0, p0}, Lo/StatsLogEventWrapper$TaskDescription;-><init>(Lo/StatsLogEventWrapper;)V

    iput-object v0, p0, Lo/StatsLogEventWrapper;->v:Lo/StatsLogEventWrapper$TaskDescription;

    .line 137
    sget v0, Lo/IHwInterface$LoaderManager;->l:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 138
    invoke-virtual {p0, p2}, Lo/StatsLogEventWrapper;->setFitsSystemWindows(Z)V

    .line 139
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lo/StatsLogEventWrapper;->v:Lo/StatsLogEventWrapper$TaskDescription;

    check-cast v1, Lo/WebSyncManager;

    invoke-virtual {v0, v1}, Lo/ImageButton;->setTagAnimationListener(Lo/WebSyncManager;)V

    .line 140
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    iget-boolean v1, p0, Lo/StatsLogEventWrapper;->d:Z

    invoke-virtual {v0, v1}, Lo/ImageButton;->setShowTapAreaBorder(Z)V

    .line 141
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/StatsLogEventWrapper;->u:I

    .line 142
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/StatsLogEventWrapper;->x:I

    .line 143
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lo/IHwInterface$StateListAnimator;->j:I

    invoke-static {p1, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lo/StatsLogEventWrapper;->k:Landroid/graphics/drawable/ColorDrawable;

    .line 144
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lo/IHwInterface$Activity;->x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/StatsLogEventWrapper;->y:I

    .line 145
    iget-object p1, p0, Lo/StatsLogEventWrapper;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object p1, p0, Lo/StatsLogEventWrapper;->e:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object p1, p0, Lo/StatsLogEventWrapper;->e:Landroid/graphics/Paint;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x6

    new-array p1, p1, [Lkotlin/Pair;

    .line 149
    iget-object v0, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {v0}, Lo/StatsLogEventWrapper$ActionBar;->b()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "nflx-close-up"

    invoke-static {v1, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 150
    iget-object v0, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {v0}, Lo/StatsLogEventWrapper$ActionBar;->b()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "nflx-close-down"

    invoke-static {v1, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, p2

    .line 151
    iget-object p2, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p2}, Lo/StatsLogEventWrapper$ActionBar;->c()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "nflx-dislikeSelect-up"

    invoke-static {v0, p2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, p1, p3

    .line 152
    iget-object p2, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p2}, Lo/StatsLogEventWrapper$ActionBar;->c()Ljava/lang/CharSequence;

    move-result-object p2

    const-string p3, "nflx-dislikeSelect-down"

    invoke-static {p3, p2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 153
    iget-object p2, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p2}, Lo/StatsLogEventWrapper$ActionBar;->a()Ljava/lang/CharSequence;

    move-result-object p2

    const-string p3, "nflx-likeSelect-up"

    invoke-static {p3, p2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 154
    iget-object p2, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p2}, Lo/StatsLogEventWrapper$ActionBar;->a()Ljava/lang/CharSequence;

    move-result-object p2

    const-string p3, "nflx-likeSelect-down"

    invoke-static {p3, p2}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 148
    invoke-static {p1}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/StatsLogEventWrapper;->t:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a()Lo/aka;
    .locals 1

    .line 38
    sget-object v0, Lo/StatsLogEventWrapper;->z:Lo/aka;

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    .line 158
    iget-boolean v0, p0, Lo/StatsLogEventWrapper;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "-up"

    goto :goto_0

    :cond_0
    const-string v0, "-down"

    :goto_0
    return-object v0
.end method

.method public static final synthetic b(Lo/StatsLogEventWrapper;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lo/StatsLogEventWrapper;->m:Z

    return-void
.end method

.method public static final synthetic b(Lo/WebStorage;)V
    .locals 0

    .line 38
    sput-object p0, Lo/StatsLogEventWrapper;->A:Lo/WebStorage;

    return-void
.end method

.method public static final synthetic c(Lo/StatsLogEventWrapper;)Lo/StatsDimensionsValue;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    return-object p0
.end method

.method public static final synthetic c()Lo/WebStorage;
    .locals 1

    .line 38
    sget-object v0, Lo/StatsLogEventWrapper;->A:Lo/WebStorage;

    return-object v0
.end method

.method public static final synthetic d(Lo/StatsLogEventWrapper;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/StatsLogEventWrapper;->f()V

    return-void
.end method

.method public static final synthetic d(Lo/StatsLogEventWrapper;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lo/StatsLogEventWrapper;->d(Z)V

    return-void
.end method

.method private final d(Z)V
    .locals 2

    .line 241
    iget-object v0, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p1}, Lo/StatsLogEventWrapper$ActionBar;->d()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lo/StatsLogEventWrapper;->B:Lo/StatsLogEventWrapper$ActionBar;

    invoke-virtual {p1}, Lo/StatsLogEventWrapper$ActionBar;->e()Ljava/lang/CharSequence;

    move-result-object p1

    .line 242
    :goto_0
    invoke-static {v0, p1}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    .line 245
    :cond_2
    iget-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_3

    .line 246
    check-cast p1, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0, v1}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 248
    :cond_3
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    :cond_4
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->e()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_5
    const/4 p1, 0x0

    .line 251
    move-object v0, p1

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 252
    move-object v0, p1

    check-cast v0, Lo/StatsDimensionsValue;

    iput-object v0, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    .line 253
    check-cast p1, Lo/WebResourceError;

    iput-object p1, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    return-void
.end method

.method public static final synthetic e(Lo/StatsLogEventWrapper;)Lo/SimpleClock$Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/StatsLogEventWrapper;->w:Lo/SimpleClock$Activity;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ImageButton;->a(Ljava/lang/String;)Lo/WebResourceError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lo/StatsLogEventWrapper;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 4

    .line 232
    new-instance v0, Lo/HeaderViewListAdapter;

    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lo/StatsLogEventWrapper;->t:Ljava/util/Map;

    iget-object v3, p0, Lo/StatsLogEventWrapper;->p:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lo/HeaderViewListAdapter;-><init>(Lo/ImageButton;Ljava/util/Map;Ljava/util/List;)V

    iput-object v0, p0, Lo/StatsLogEventWrapper;->r:Lo/HeaderViewListAdapter;

    .line 233
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/StatsLogEventWrapper;->r:Lo/HeaderViewListAdapter;

    check-cast v1, Lo/DataInputStream;

    invoke-static {v0, v1}, Lo/FilterWriter;->a(Landroid/view/View;Lo/DataInputStream;)V

    .line 234
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/FilterWriter;->c(Landroid/view/View;I)V

    .line 235
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageButton;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method

.method private final i()V
    .locals 6

    .line 273
    invoke-direct {p0}, Lo/StatsLogEventWrapper;->j()V

    .line 274
    iget-object v0, p0, Lo/StatsLogEventWrapper;->o:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v2, p0, Lo/StatsLogEventWrapper;->y:I

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/StatsLogEventWrapper;->l:Z

    .line 275
    iget-object v0, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/StatsDimensionsValue;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nflx-thumbExpand"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    .line 277
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_5

    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nflx-dislikeDeselect"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    goto :goto_4

    .line 278
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nflx-likeDeselect"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v4}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private final j()V
    .locals 5

    .line 168
    iget-object v0, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/StatsLogEventWrapper;->o:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 171
    :cond_1
    iget-object v0, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/StatsLogEventWrapper;->s:[I

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLocationInWindow([I)V

    .line 172
    :cond_2
    iget-object v0, p0, Lo/StatsLogEventWrapper;->o:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lo/StatsLogEventWrapper;->s:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 173
    aget v2, v0, v1

    aget v3, v3, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/StatsDimensionsValue;)V
    .locals 3

    const-string v0, "coordinatorLayout"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetButton"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p2}, Lo/StatsDimensionsValue;->b()I

    move-result v0

    iput v0, p0, Lo/StatsLogEventWrapper;->q:I

    .line 211
    iput-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 212
    iput-object p2, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    .line 213
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    :cond_1
    iget-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 215
    check-cast p1, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {p1, v0, p2}, Lo/adh;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 217
    :cond_2
    iget-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Application;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_3
    iput-boolean p2, p0, Lo/StatsLogEventWrapper;->g:Z

    .line 220
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->b()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/StatsLogEventWrapper;->k:Landroid/graphics/drawable/ColorDrawable;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lo/StatsLogEventWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 221
    :cond_4
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lo/StatsLogEventWrapper;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :goto_0
    invoke-direct {p0}, Lo/StatsLogEventWrapper;->i()V

    .line 225
    iget-object p1, p0, Lo/StatsLogEventWrapper;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-string p1, "nflx-close"

    .line 226
    invoke-direct {p0, p1}, Lo/StatsLogEventWrapper;->e(Ljava/lang/String;)V

    const-string p1, "nflx-likeSelect"

    .line 227
    invoke-direct {p0, p1}, Lo/StatsLogEventWrapper;->e(Ljava/lang/String;)V

    const-string p1, "nflx-dislikeSelect"

    .line 228
    invoke-direct {p0, p1}, Lo/StatsLogEventWrapper;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageButton;->d(Landroid/view/MotionEvent;)Lo/WebResourceError;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 288
    iput-object p1, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    if-eqz p1, :cond_6

    .line 290
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/ImageButton;->performHapticFeedback(I)Z

    goto/16 :goto_1

    .line 296
    :cond_1
    iget-object p1, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 297
    iget p1, p0, Lo/StatsLogEventWrapper;->q:I

    if-nez p1, :cond_4

    .line 298
    iget-boolean p1, p0, Lo/StatsLogEventWrapper;->m:Z

    const-string v3, "nflx-close"

    if-eqz p1, :cond_2

    .line 301
    iput-boolean v2, p0, Lo/StatsLogEventWrapper;->m:Z

    .line 302
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageButton;->j()V

    .line 303
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nflx-thumbExpand"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo/ImageButton;->a(Ljava/lang/String;)Lo/WebResourceError;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 305
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Lo/ImageButton;->i()I

    move-result v4

    invoke-virtual {p1}, Lo/WebResourceError;->d()I

    move-result p1

    sub-int/2addr v4, p1

    .line 306
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lo/ImageButton;->c(Ljava/lang/String;I)Z

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v1, v0}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 311
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lo/StatsLogEventWrapper;->w:Lo/SimpleClock$Activity;

    check-cast p1, Lo/SystemVibrator;

    invoke-interface {v3, p1}, Lo/SimpleClock$Activity;->a(Lo/SystemVibrator;)V

    .line 314
    :cond_4
    iget-object p1, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v3

    invoke-virtual {p1}, Lo/WebResourceError;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2, v1, v0}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 315
    :cond_5
    check-cast v0, Lo/WebResourceError;

    iput-object v0, p0, Lo/StatsLogEventWrapper;->n:Lo/WebResourceError;

    :cond_6
    :goto_1
    return-void
.end method

.method public final d()Lo/ImageButton;
    .locals 3

    iget-object v0, p0, Lo/StatsLogEventWrapper;->a:Lo/ams;

    sget-object v1, Lo/StatsLogEventWrapper;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageButton;

    return-object v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lo/StatsLogEventWrapper;->r:Lo/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1}, Lo/HeaderViewListAdapter;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-boolean v0, p0, Lo/StatsLogEventWrapper;->d:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/StatsLogEventWrapper;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageButton;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 263
    iget-boolean p1, p0, Lo/StatsLogEventWrapper;->m:Z

    if-nez p1, :cond_0

    .line 264
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nflx-close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lo/StatsLogEventWrapper;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    .line 265
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/StatsLogEventWrapper;->w:Lo/SimpleClock$Activity;

    check-cast p1, Lo/SystemVibrator;

    invoke-interface {v0, p1}, Lo/SimpleClock$Activity;->a(Lo/SystemVibrator;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-nez p1, :cond_0

    .line 177
    iget-boolean p1, p0, Lo/StatsLogEventWrapper;->g:Z

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/StatsLogEventWrapper;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_2

    .line 178
    invoke-direct {p0}, Lo/StatsLogEventWrapper;->j()V

    .line 179
    iget-object p1, p0, Lo/StatsLogEventWrapper;->i:Lo/StatsDimensionsValue;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 180
    iget-object p4, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    iget-object p5, p0, Lo/StatsLogEventWrapper;->o:[I

    aget v0, p5, p3

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 181
    aget v0, p5, p2

    iput v0, p4, Landroid/graphics/Rect;->top:I

    .line 182
    aget p5, p5, p3

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "it.iconView"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    iput p5, p4, Landroid/graphics/Rect;->right:I

    .line 183
    iget-object p4, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    iget-object p5, p0, Lo/StatsLogEventWrapper;->o:[I

    aget p5, p5, p2

    invoke-virtual {p1}, Lo/StatsDimensionsValue;->d()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p5, p1

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    .line 185
    :cond_1
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Lo/ImageButton;->getMeasuredWidth()I

    move-result p1

    .line 186
    iget-object p4, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p5, p0, Lo/StatsLogEventWrapper;->u:I

    iget-object v0, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/2addr p5, v0

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p5, v0

    iput p5, p4, Landroid/graphics/Rect;->left:I

    .line 187
    iget-object p4, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p5, p0, Lo/StatsLogEventWrapper;->x:I

    iget-object v1, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/2addr p5, v1

    sub-int/2addr p5, v0

    iput p5, p4, Landroid/graphics/Rect;->top:I

    .line 188
    iget-object p4, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p5, p0, Lo/StatsLogEventWrapper;->x:I

    iget-object v0, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/2addr p5, v0

    iput p5, p4, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object p4, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p5, p0, Lo/StatsLogEventWrapper;->u:I

    iget-object v1, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p5, v1

    add-int/2addr p5, v0

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    .line 190
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onLayout -> "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lo/StatsLogEventWrapper;->h:Landroid/graphics/Rect;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "UserRatingButtonOverlayLottie"

    invoke-static {p4, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    iget-object p4, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lo/StatsLogEventWrapper;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p4, p5, v0, v1}, Lo/ImageButton;->layout(IIII)V

    .line 192
    iput-boolean p3, p0, Lo/StatsLogEventWrapper;->g:Z

    .line 193
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/ImageButton;->setResetViewScaleFactor(Z)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 198
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 199
    invoke-virtual {p0}, Lo/StatsLogEventWrapper;->d()Lo/ImageButton;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lo/StatsLogEventWrapper;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setDrawDebugBorder(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lo/StatsLogEventWrapper;->d:Z

    return-void
.end method
