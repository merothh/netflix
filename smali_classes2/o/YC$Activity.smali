.class public final Lo/YC$Activity;
.super Lo/ShellCommand$ActionBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Activity"
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field final synthetic c:Lo/YC;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private f:J

.field private final g:Lo/ams;

.field private h:J

.field private i:Lo/Lw;

.field private final j:Lo/ams;

.field private k:Z

.field private l:Lio/reactivex/disposables/Disposable;

.field private m:Lio/reactivex/disposables/Disposable;

.field private n:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lo/LegacyRequestMapper;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/YC$Activity;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleImg"

    const-string v5, "getTitleImg()Lcom/netflix/mediaclient/android/widget/FitCenterTopImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "currProgress"

    const-string v5, "getCurrProgress()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "originalBrandingImage"

    const-string v5, "getOriginalBrandingImage()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "middleGuideline"

    const-string v5, "getMiddleGuideline()Landroidx/constraintlayout/widget/Guideline;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bottomGuideline"

    const-string v4, "getBottomGuideline()Landroidx/constraintlayout/widget/Guideline;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/YC$Activity;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lo/YC;Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lo/ShellCommand$StateListAnimator;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lo/YC$Activity;->c:Lo/YC;

    .line 156
    invoke-direct {p0, p2, p3}, Lo/ShellCommand$ActionBar;-><init>(Landroid/view/View;Lo/ShellCommand$StateListAnimator;)V

    .line 158
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pa:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->e:Lo/ams;

    .line 160
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->df:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->a:Lo/ams;

    .line 162
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->oZ:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->d:Lo/ams;

    .line 164
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->lK:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->j:Lo/ams;

    .line 166
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->jx:I

    invoke-static {p0, p1}, Lo/NfcV;->e(Lo/ShellCommand$ActionBar;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->g:Lo/ams;

    const-wide/16 p1, 0x7530

    .line 169
    iput-wide p1, p0, Lo/YC$Activity;->h:J

    .line 185
    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lo/YC$Activity$4;

    invoke-direct {p2, p0}, Lo/YC$Activity$4;-><init>(Lo/YC$Activity;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lo/YC$Activity;)Lo/CompatibilityInfo;
    .locals 0

    .line 155
    iget-object p0, p0, Lo/YC$Activity;->o:Lo/CompatibilityInfo;

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lo/DayPickerPagerAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 331
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "image url is empty, PreviewsTitleBarAdapter.loadTitleImage"

    .line 332
    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 336
    :cond_2
    sget-object p2, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {p2}, Lo/dN$ActionBar;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 337
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object p2

    .line 338
    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 339
    invoke-virtual {v1, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 341
    sget-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 337
    invoke-virtual {p2, p1}, Lo/DayPickerPagerAdapter;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void

    .line 350
    :cond_3
    iget-object p2, p0, Lo/YC$Activity;->l:Lio/reactivex/disposables/Disposable;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 351
    :cond_4
    sget-object p2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p2

    .line 352
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    .line 351
    invoke-interface {p2, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 356
    new-instance p2, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;-><init>(Lo/YC$Activity;)V

    check-cast p2, Lo/alA;

    .line 361
    sget-object v0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$2;->b:Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$2;

    check-cast v0, Lo/alA;

    .line 355
    invoke-static {p1, v0, p2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->l:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic a(Lo/YC$Activity;J)V
    .locals 0

    .line 155
    iput-wide p1, p0, Lo/YC$Activity;->f:J

    return-void
.end method

.method public static final synthetic b(Lo/YC$Activity;)Lo/Lw;
    .locals 0

    .line 155
    iget-object p0, p0, Lo/YC$Activity;->i:Lo/Lw;

    return-object p0
.end method

.method public static final synthetic b(Lo/YC$Activity;Lo/CompatibilityInfo;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lo/YC$Activity;->n:Lo/CompatibilityInfo;

    return-void
.end method

.method public static final synthetic c(Lo/YC$Activity;)Lo/DayPickerPagerAdapter;
    .locals 0

    .line 155
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 300
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    sget-object p2, Lo/dN;->d:Lo/dN$ActionBar;

    invoke-virtual {p2}, Lo/dN$ActionBar;->a()Z

    move-result p2

    if-nez p2, :cond_0

    .line 302
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object p2

    .line 303
    new-instance v0, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 304
    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 306
    sget-object v0, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 302
    invoke-virtual {p2, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    return-void

    .line 315
    :cond_0
    iget-object p2, p0, Lo/YC$Activity;->q:Lio/reactivex/disposables/Disposable;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 316
    :cond_1
    sget-object p2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "itemView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p2

    .line 317
    sget-object v0, Lcom/netflix/android/imageloader/api/GetImageRequest;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$Application;

    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/netflix/android/imageloader/api/GetImageRequest$Application;->e(Landroid/view/View;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/GetImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest;->d()Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    move-result-object p1

    .line 316
    invoke-interface {p2, p1}, Lo/ErrorCodes;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;

    move-result-object p1

    .line 319
    new-instance p2, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadBrandingImage$1;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadBrandingImage$1;-><init>(Lo/YC$Activity;)V

    check-cast p2, Lo/alA;

    .line 324
    sget-object v0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadBrandingImage$2;->b:Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadBrandingImage$2;

    check-cast v0, Lo/alA;

    .line 318
    invoke-static {p1, v0, p2}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->q:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic d(Lo/YC$Activity;)J
    .locals 2

    .line 155
    iget-wide v0, p0, Lo/YC$Activity;->h:J

    return-wide v0
.end method

.method public static final synthetic e(Lo/YC$Activity;)Lo/GridView;
    .locals 0

    .line 155
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lo/YC$Activity;Lo/CompatibilityInfo;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lo/YC$Activity;->o:Lo/CompatibilityInfo;

    return-void
.end method

.method public static final synthetic f(Lo/YC$Activity;)Lo/CompatibilityInfo;
    .locals 0

    .line 155
    iget-object p0, p0, Lo/YC$Activity;->n:Lo/CompatibilityInfo;

    return-object p0
.end method

.method private final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/YC$Activity;->a:Lo/ams;

    sget-object v1, Lo/YC$Activity;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final i()Lo/DayPickerPagerAdapter;
    .locals 3

    iget-object v0, p0, Lo/YC$Activity;->e:Lo/ams;

    sget-object v1, Lo/YC$Activity;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DayPickerPagerAdapter;

    return-object v0
.end method

.method private final j()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/YC$Activity;->d:Lo/ams;

    sget-object v1, Lo/YC$Activity;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final m()Lo/MotionEvent;
    .locals 3

    iget-object v0, p0, Lo/YC$Activity;->j:Lo/ams;

    sget-object v1, Lo/YC$Activity;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MotionEvent;

    return-object v0
.end method

.method private final o()Lo/MotionEvent;
    .locals 3

    iget-object v0, p0, Lo/YC$Activity;->g:Lo/ams;

    sget-object v1, Lo/YC$Activity;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MotionEvent;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 286
    invoke-super {p0}, Lo/ShellCommand$ActionBar;->a()V

    .line 287
    iget-object v0, p0, Lo/YC$Activity;->m:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 4

    .line 242
    invoke-super {p0, p1}, Lo/ShellCommand$ActionBar;->b(F)V

    .line 243
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setAlpha(F)V

    .line 245
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 246
    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lo/MenuInflater;

    .line 247
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 249
    iget-boolean v2, p0, Lo/YC$Activity;->k:Z

    if-eqz v2, :cond_0

    const v2, 0x3e19999a    # 0.15f

    mul-float p1, p1, v2

    .line 252
    invoke-direct {p0}, Lo/YC$Activity;->m()Lo/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Lo/MotionEvent;->getId()I

    move-result v2

    const v3, 0x3e8f5c29    # 0.28f

    add-float/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Lo/Factory2;->d(IF)V

    .line 253
    invoke-direct {p0}, Lo/YC$Activity;->o()Lo/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Lo/MotionEvent;->getId()I

    move-result v2

    const v3, 0x3f59999a    # 0.85f

    add-float/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Lo/Factory2;->d(IF)V

    .line 255
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    :cond_0
    return-void

    .line 246
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .locals 7

    .line 260
    invoke-super {p0, p1}, Lo/ShellCommand$ActionBar;->b(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lo/YC$Activity;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lo/YC$Activity;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 263
    instance-of v0, p1, Lo/Yn;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lo/YC$Activity;->h:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 264
    check-cast p1, Lo/Yn;

    invoke-virtual {p1}, Lo/Yn;->c()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    .line 265
    iget-wide v0, p0, Lo/YC$Activity;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 266
    new-instance v0, Lo/YC$Activity$Activity;

    invoke-direct {v0, p0}, Lo/YC$Activity$Activity;-><init>(Lo/YC$Activity;)V

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    .line 267
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "previewItem.playProgress\u2026dSchedulers.mainThread())"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance p1, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$onAttach$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$onAttach$2;-><init>(Lo/YC$Activity;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v3, 0x0

    .line 274
    sget-object p1, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$onAttach$3;->d:Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$onAttach$3;

    move-object v2, p1

    check-cast v2, Lo/alA;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 268
    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lo/YC$Activity;->m:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lo/YC$Activity;->i:Lo/Lw;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Lw;->c(F)V

    .line 280
    :cond_1
    iput-wide v1, p0, Lo/YC$Activity;->f:J

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    instance-of v0, p1, Lo/Yn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lo/Yn;

    if-eqz v0, :cond_3

    .line 198
    new-instance v1, Lo/Factory2;

    invoke-direct {v1}, Lo/Factory2;-><init>()V

    .line 199
    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Lo/MenuInflater;

    .line 200
    invoke-virtual {v1, v2}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 202
    invoke-virtual {v0}, Lo/Yn;->getOriginalBrandingUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 203
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v6

    invoke-virtual {v6}, Lo/GridView;->getId()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Lo/Factory2;->e(II)V

    .line 204
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/GridView;->setTransitionName(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lo/YC$Activity;->m()Lo/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Lo/MotionEvent;->getId()I

    move-result v6

    const v7, 0x3edc28f6    # 0.43f

    invoke-virtual {v1, v6, v7}, Lo/Factory2;->d(IF)V

    .line 207
    invoke-direct {p0}, Lo/YC$Activity;->o()Lo/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Lo/MotionEvent;->getId()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Lo/Factory2;->d(IF)V

    .line 209
    iput-boolean v4, p0, Lo/YC$Activity;->k:Z

    const-string v6, "originalBrandingImageUrl"

    .line 211
    invoke-static {v3, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lo/YC$Activity;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_1
    move-object v3, p0

    check-cast v3, Lo/YC$Activity;

    .line 213
    invoke-direct {v3}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v6

    invoke-virtual {v6}, Lo/GridView;->getId()I

    move-result v6

    const/16 v7, 0x8

    invoke-virtual {v1, v6, v7}, Lo/Factory2;->e(II)V

    .line 215
    iput-boolean v5, v3, Lo/YC$Activity;->k:Z

    .line 217
    invoke-direct {v3}, Lo/YC$Activity;->m()Lo/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Lo/MotionEvent;->getId()I

    move-result v6

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v6, v7}, Lo/Factory2;->d(IF)V

    .line 218
    invoke-direct {v3}, Lo/YC$Activity;->o()Lo/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Lo/MotionEvent;->getId()I

    move-result v3

    const v6, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v3, v6}, Lo/Factory2;->d(IF)V

    .line 221
    :goto_1
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v5}, Lo/DayPickerPagerAdapter;->setVisibility(I)V

    .line 222
    invoke-virtual {v0}, Lo/Yn;->getTitleTreatmentUrl()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lo/DayPickerPagerAdapter;->setPassActualScaleTypeToParent(Z)V

    .line 224
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v4

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Lo/DayPickerPagerAdapter;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/DayPickerPagerAdapter;->setTransitionName(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lo/YC$Activity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lo/YC$Activity;->h()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    check-cast p1, Lo/Yn;

    invoke-virtual {p1}, Lo/Yn;->getSupplementalVideoDuration()J

    move-result-wide v3

    const/16 p1, 0x3e8

    int-to-long v5, p1

    mul-long v3, v3, v5

    iput-wide v3, p0, Lo/YC$Activity;->h:J

    .line 232
    new-instance p1, Lo/Lw;

    .line 233
    invoke-virtual {v0}, Lo/Yn;->getForegroundColor()I

    move-result v6

    .line 234
    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    invoke-virtual {v0}, Lo/MenuInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->q:I

    invoke-static {v0, v3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    .line 232
    invoke-direct/range {v5 .. v10}, Lo/Lw;-><init>(IIFILo/amc;)V

    iput-object p1, p0, Lo/YC$Activity;->i:Lo/Lw;

    .line 236
    invoke-direct {p0}, Lo/YC$Activity;->h()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/YC$Activity;->i:Lo/Lw;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-virtual {v1, v2}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void

    .line 199
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public d()V
    .locals 2

    .line 291
    invoke-direct {p0}, Lo/YC$Activity;->i()Lo/DayPickerPagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/DayPickerPagerAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    invoke-direct {p0}, Lo/YC$Activity;->j()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v0, p0, Lo/YC$Activity;->o:Lo/CompatibilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 294
    :cond_0
    iget-object v0, p0, Lo/YC$Activity;->q:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 295
    :cond_1
    iget-object v0, p0, Lo/YC$Activity;->n:Lo/CompatibilityInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 296
    :cond_2
    iget-object v0, p0, Lo/YC$Activity;->l:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    invoke-virtual {p0}, Lo/YC$Activity;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lo/YC$Activity;->c()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lo/YC$Activity;->g()Lo/ShellCommand$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$StateListAnimator;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lo/YC$Activity;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lo/Yn;

    invoke-virtual {v0}, Lo/Yn;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.netflix.mediaclient.ui.previews.PreviewsFeedItemModel"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, ""

    .line 192
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/YC$Activity;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " x = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$Activity;->e()Lo/ShellCommand$Application;

    move-result-object v0

    invoke-virtual {v0}, Lo/ShellCommand$Application;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$Activity;->e()Lo/ShellCommand$Application;

    move-result-object v0

    iget v0, v0, Lo/ShellCommand$Application;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$Activity;->e()Lo/ShellCommand$Application;

    move-result-object v0

    iget v0, v0, Lo/ShellCommand$Application;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", visible = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/YC$Activity;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
