.class public final Lo/FileObserver;
.super Lo/ChildZygoteProcess;
.source ""

# interfaces
.implements Lo/FileBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FileObserver$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/FileObserver$StateListAnimator;

.field static final synthetic e:[Lo/amT;

.field private static final k:I


# instance fields
.field private final b:Lo/ams;

.field private final d:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final m:Landroid/view/View;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lo/FileObserver;

    const/4 v1, 0x7

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "pull"

    const-string v5, "getPull()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "caret"

    const-string v5, "getCaret()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v4

    const-string v5, "loadingProgress"

    const-string v6, "getLoadingProgress()Landroid/widget/ProgressBar;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v4

    const-string v5, "loadingLabel"

    const-string v6, "getLoadingLabel()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v4

    const-string v5, "title"

    const-string v6, "getTitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v4

    const-string v5, "subtitle"

    const-string v6, "getSubtitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v4, "boxart"

    const-string v5, "getBoxart()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v0, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lo/FileObserver;->e:[Lo/amT;

    new-instance v0, Lo/FileObserver$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FileObserver$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/FileObserver;->a:Lo/FileObserver$StateListAnimator;

    const/16 v0, 0x12c

    int-to-float v0, v0

    .line 229
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 230
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Lookup.get<Context>().resources"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 229
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lo/FileObserver;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const-string v0, "boundingLayout"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lo/ChildZygoteProcess;-><init>(Landroid/view/View;)V

    .line 63
    sget v0, Lo/CancellationSignal$Activity;->z:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->b:Lo/ams;

    .line 64
    sget v0, Lo/CancellationSignal$Activity;->i:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->d:Lo/ams;

    .line 65
    sget v0, Lo/CancellationSignal$Activity;->o:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->i:Lo/ams;

    .line 66
    sget v0, Lo/CancellationSignal$Activity;->r:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->f:Lo/ams;

    .line 67
    sget v0, Lo/CancellationSignal$Activity;->N:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->g:Lo/ams;

    .line 68
    sget v0, Lo/CancellationSignal$Activity;->E:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->h:Lo/ams;

    .line 69
    sget v0, Lo/CancellationSignal$Activity;->j:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/FileObserver;->j:Lo/ams;

    .line 72
    invoke-direct {p0}, Lo/FileObserver;->x()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/FileObserver$1;

    invoke-direct {v1, p0}, Lo/FileObserver$1;-><init>(Lo/FileObserver;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 90
    invoke-virtual {p0}, Lo/FileObserver;->p()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/CancellationSignal$TaskDescription;->b:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 91
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 92
    invoke-virtual {p0}, Lo/FileObserver;->p()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lo/CancellationSignal$TaskDescription;->a:I

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 93
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 95
    new-instance v2, Lo/FileObserver$ActionBar;

    invoke-direct {v2, p0, p1, v1, v0}, Lo/FileObserver$ActionBar;-><init>(Lo/FileObserver;Landroid/view/View;FF)V

    check-cast v2, Ljava/lang/Runnable;

    .line 109
    invoke-virtual {p0}, Lo/FileObserver;->p()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/FileObserver$3;

    invoke-direct {v1, p0, v2}, Lo/FileObserver$3;-><init>(Lo/FileObserver;Ljava/lang/Runnable;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 119
    iput-object p1, p0, Lo/FileObserver;->m:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lo/FileObserver;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/FileObserver;->n:I

    return-void
.end method

.method private final A()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->h:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final C()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->f:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final D()Lo/BaseAdapter;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->j:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BaseAdapter;

    return-object v0
.end method

.method public static final synthetic a(Lo/FileObserver;)Lo/ImageSwitcher;
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/FileObserver;->C()Lo/ImageSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lo/FileObserver;)Lo/BaseAdapter;
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/FileObserver;)Landroid/widget/ProgressBar;
    .locals 0

    .line 49
    invoke-direct {p0}, Lo/FileObserver;->u()Landroid/widget/ProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t()I
    .locals 1

    .line 49
    sget v0, Lo/FileObserver;->k:I

    return v0
.end method

.method private final u()Landroid/widget/ProgressBar;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->i:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private final v()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->d:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->b:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final z()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/FileObserver;->g:Lo/ams;

    sget-object v1, Lo/FileObserver;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 121
    iget v0, p0, Lo/FileObserver;->n:I

    return v0
.end method

.method public a(Z)V
    .locals 1

    .line 130
    invoke-direct {p0}, Lo/FileObserver;->x()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/Integer;)V
    .locals 1

    const-string p4, "title"

    invoke-static {p1, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "coverUri"

    invoke-static {p3, p4}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lo/FileObserver;->v()Landroid/widget/ImageView;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object p4

    .line 162
    invoke-virtual {p4, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 163
    invoke-virtual {p4, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 167
    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/BaseAdapter;->i()V

    .line 171
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object p1

    .line 172
    new-instance p2, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 173
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    const/4 p3, 0x1

    .line 174
    invoke-virtual {p2, p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 175
    invoke-virtual {p2, p3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->b(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p2

    .line 171
    invoke-virtual {p1, p2}, Lo/BaseAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 119
    iget-object v0, p0, Lo/FileObserver;->m:Landroid/view/View;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .line 187
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Lo/BaseAdapter;->setVisibility(I)V

    return-void
.end method

.method public e(FI)V
    .locals 4

    .line 196
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/FileObserver;->i()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    float-to-int v0, v0

    .line 215
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 217
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 220
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 199
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->f()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setScaleX(F)V

    .line 200
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->f()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setScaleY(F)V

    .line 201
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->e_()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setScaleX(F)V

    .line 202
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->e_()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setScaleY(F)V

    .line 204
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/FileObserver;->d_()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    float-to-int v0, v0

    .line 222
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 224
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 225
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 227
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    invoke-direct {p0}, Lo/FileObserver;->v()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->m()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 210
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/FileObserver;->o()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->b([FF)F

    move-result v0

    invoke-static {p2, v0}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 211
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object p2

    invoke-virtual {p0}, Lo/FileObserver;->r()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/FileObserver;->a([FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setTranslationY(F)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lo/FileObserver;->C()Lo/ImageSwitcher;

    move-result-object v0

    .line 135
    sget v1, Lo/CancellationSignal$ActionBar;->a:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    const-string v2, "mdx_device"

    .line 136
    invoke-virtual {v1, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0}, Lo/FileObserver;->C()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 139
    invoke-direct {p0}, Lo/FileObserver;->u()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 142
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lo/FileObserver;->v()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lo/FileObserver;->z()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-direct {p0}, Lo/FileObserver;->A()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lo/FileObserver;->D()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m_()V
    .locals 2

    .line 147
    invoke-direct {p0}, Lo/FileObserver;->C()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-direct {p0}, Lo/FileObserver;->u()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    invoke-direct {p0}, Lo/FileObserver;->C()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method
