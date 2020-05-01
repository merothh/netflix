.class public final Lo/Fd;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Fd$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;

.field public static final e:Lo/Fd$Application;


# instance fields
.field private final b:I

.field private final c:Lo/ams;

.field private final d:Landroid/view/ViewGroup;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/aka;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/aka;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fd;

    const/16 v1, 0x9

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "addToMyListButtonContainer"

    const-string v5, "getAddToMyListButtonContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "addToMyListButton"

    const-string v5, "getAddToMyListButton()Lcom/netflix/mediaclient/android/widget/NetflixToggleButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userRatingButtonContainer"

    const-string v5, "getUserRatingButtonContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareButtonContainer"

    const-string v5, "getShareButtonContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareButton"

    const-string v5, "getShareButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "downloadButtonContainer"

    const-string v5, "getDownloadButtonContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "downloadButton"

    const-string v5, "getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "restartButtonContainer"

    const-string v5, "getRestartButtonContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "restartButton"

    const-string v4, "getRestartButton()Lcom/netflix/mediaclient/android/widget/NetflixToggleButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lo/Fd;->a:[Lo/amT;

    new-instance v0, Lo/Fd$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Fd$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Fd;->e:Lo/Fd$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lio/reactivex/Observable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destroyObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Fd;->u:Lio/reactivex/Observable;

    .line 52
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ge:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2, v0}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Fd;->d:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Fd;->b:I

    .line 56
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->eh:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->c:Lo/ams;

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->la:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->h:Lo/ams;

    .line 59
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ei:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->j:Lo/ams;

    .line 61
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$userRatingButton$2;-><init>(Lo/Fd;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->i:Lo/aka;

    .line 74
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ej:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->g:Lo/ams;

    .line 75
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vg:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->f:Lo/ams;

    .line 77
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ea:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->m:Lo/ams;

    .line 78
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->va:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->n:Lo/ams;

    .line 80
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->eg:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->k:Lo/ams;

    .line 81
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->vj:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->o:Lo/ams;

    .line 84
    new-instance p1, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$buttonWidth$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/details/uiView/DetailsPageVideoCTAsUIView_Ab18255$buttonWidth$2;-><init>(Lo/Fd;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Fd;->l:Lo/aka;

    .line 106
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 108
    :cond_1
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "uiView.context"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->U:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 109
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 110
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 282
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "layoutParams"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lo/BatteryManager;->a(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lo/BatteryManager;->d(Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    .line 290
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 291
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 292
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 293
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 294
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 295
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 296
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 111
    :cond_3
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 304
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    invoke-direct {p0}, Lo/Fd;->t()Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lo/Fd;->u()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 116
    invoke-direct {p0}, Lo/Fd;->v()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 117
    invoke-direct {p0}, Lo/Fd;->z()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    invoke-direct {p0}, Lo/Fd;->A()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    invoke-direct {p0}, Lo/Fd;->C()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lo/Fd$5;

    invoke-direct {p2, p0}, Lo/Fd$5;-><init>(Lo/Fd;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0}, Lo/Fd;->e()V

    return-void

    .line 52
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final A()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Fd;->k:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final B()Lo/ListView;
    .locals 3

    iget-object v0, p0, Lo/Fd;->o:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ListView;

    return-object v0
.end method

.method private final C()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fd;->f:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final D()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 3

    iget-object v0, p0, Lo/Fd;->n:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method private final F()I
    .locals 1

    iget-object v0, p0, Lo/Fd;->l:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final a(Landroid/widget/FrameLayout;)V
    .locals 2

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 274
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 275
    invoke-direct {p0}, Lo/Fd;->F()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    .line 276
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public static final synthetic a(Lo/Fd;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lo/Fd;->r:Z

    return p0
.end method

.method public static final synthetic c(Lo/Fd;)Landroid/widget/FrameLayout;
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/Fd;->t()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/Fd;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static final synthetic e(Lo/Fd;)Lo/ListView;
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object p0

    return-object p0
.end method

.method private final r()Lo/ListView;
    .locals 3

    iget-object v0, p0, Lo/Fd;->h:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ListView;

    return-object v0
.end method

.method private final t()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Fd;->c:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final u()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Fd;->j:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final v()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Fd;->g:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final x()Lo/SimpleClock;
    .locals 1

    iget-object v0, p0, Lo/Fd;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SimpleClock;

    return-object v0
.end method

.method private final z()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Fd;->m:Lo/ams;

    sget-object v1, Lo/Fd;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 54
    iget v0, p0, Lo/Fd;->b:I

    return v0
.end method

.method public final a(Z)V
    .locals 5

    .line 138
    iget-boolean v0, p0, Lo/Fd;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uiView.context"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 144
    sget-object v1, Lo/Oh;->c:Lo/Oh$Activity;

    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Lo/Oh$Activity;->e(Landroid/widget/CompoundButton;)Lo/Od;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lo/Fd;->u:Lio/reactivex/Observable;

    const/4 v3, 0x0

    .line 142
    new-instance v4, Lo/Oc;

    invoke-direct {v4, v0, v1, v2, v3}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    .line 150
    new-instance v0, Lo/DK$ActionBar;

    invoke-direct {v0, p1}, Lo/DK$ActionBar;-><init>(Z)V

    invoke-virtual {p0, v0}, Lo/Fd;->e(Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sQ:I

    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object v1

    invoke-virtual {v1}, Lo/ListView;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/ListView;->setTag(ILjava/lang/Object;)V

    .line 154
    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object p1

    invoke-virtual {p1}, Lo/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lo/Fd$TaskDescription;

    invoke-direct {v0, p0}, Lo/Fd$TaskDescription;-><init>(Lo/Fd;)V

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 213
    invoke-direct {p0}, Lo/Fd;->x()Lo/SimpleClock;

    move-result-object v0

    const-string v1, "userRatingButton"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lo/SimpleClock;->setRating(I)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Lo/As;)V
    .locals 2

    const-string v0, "playableForDownload"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lo/Fd;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 233
    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lo/Fd;->D()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 239
    :cond_1
    invoke-direct {p0}, Lo/Fd;->D()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 240
    iput-boolean v0, p0, Lo/Fd;->p:Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Fd;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lo/Fd;->r()Lo/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ListView;->setVisibility(I)V

    .line 170
    invoke-direct {p0}, Lo/Fd;->t()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 208
    invoke-direct {p0}, Lo/Fd;->x()Lo/SimpleClock;

    move-result-object v0

    const-string v1, "userRatingButton"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SimpleClock;->setVisibility(I)V

    .line 209
    invoke-direct {p0}, Lo/Fd;->u()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final j()V
    .locals 4

    .line 174
    iget-boolean v0, p0, Lo/Fd;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lo/Fd;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 177
    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_1

    .line 181
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->cT:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0}, Lo/Fd;->x()Lo/SimpleClock;

    move-result-object v1

    .line 185
    new-instance v2, Lo/Fd$Activity;

    invoke-direct {v2, p0}, Lo/Fd$Activity;-><init>(Lo/Fd;)V

    check-cast v2, Lo/SimpleClock$Activity;

    const/4 v3, 0x1

    .line 183
    invoke-virtual {v1, v0, v2, v3, v3}, Lo/SimpleClock;->setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V

    .line 202
    iput-boolean v3, p0, Lo/Fd;->q:Z

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    .line 221
    invoke-direct {p0}, Lo/Fd;->C()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-direct {p0}, Lo/Fd;->v()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 226
    invoke-direct {p0}, Lo/Fd;->C()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final m()V
    .locals 2

    .line 244
    invoke-direct {p0}, Lo/Fd;->D()Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 245
    invoke-direct {p0}, Lo/Fd;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lo/Fd;->r:Z

    return-void
.end method

.method public final o()V
    .locals 2

    .line 249
    invoke-direct {p0}, Lo/Fd;->z()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 268
    invoke-direct {p0}, Lo/Fd;->A()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final q()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lo/Fd;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-direct {p0}, Lo/Fd;->B()Lo/ListView;

    move-result-object v0

    new-instance v1, Lo/Fd$ActionBar;

    invoke-direct {v1, p0}, Lo/Fd$ActionBar;-><init>(Lo/Fd;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lo/Fd;->t:Z

    return-void
.end method

.method public final s()V
    .locals 2

    .line 263
    invoke-direct {p0}, Lo/Fd;->B()Lo/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ListView;->setVisibility(I)V

    .line 264
    invoke-direct {p0}, Lo/Fd;->A()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/Fd;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method
