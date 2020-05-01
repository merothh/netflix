.class public Lo/Yz;
.super Lo/VibrationEffect;
.source ""

# interfaces
.implements Lo/Yj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Yz$ActionBar;,
        Lo/Yz$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/YB;",
        ">;",
        "Lo/Yj;"
    }
.end annotation


# static fields
.field public static final a:Lo/Yz$Activity;

.field static final synthetic b:[Lo/amT;


# instance fields
.field private final A:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lo/Yn;

.field private final C:Landroid/animation/ValueAnimator;

.field private D:Lo/EditText;

.field private final F:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

.field private final G:I

.field private final H:Ljava/lang/String;

.field private final I:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

.field private final c:Lo/aka;

.field private d:Lo/Ab;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Lo/YC;

.field private g:Lo/Ah;

.field private final h:Lo/Yl;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private final p:Lo/UpdateEngine;

.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private final s:Lo/ams;

.field private final t:Lo/Oc;

.field private final u:[I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Yn;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lo/ams;

.field private final x:Landroid/animation/ValueAnimator;

.field private final y:Lo/AnnotatedElement;

.field private final z:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Yz;

    const/16 v1, 0xb

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleBarView"

    const-string v5, "getTitleBarView()Lcom/netflix/android/widgetry/widget/ScaledItemListView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "previewsPlayerRecyclerView"

    const-string v5, "getPreviewsPlayerRecyclerView()Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerRecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "previewsBoxArtScalePlaceholder"

    const-string v5, "getPreviewsBoxArtScalePlaceholder()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "previewsTitleTreatmentScalePlaceholder"

    const-string v5, "getPreviewsTitleTreatmentScalePlaceholder()Lcom/netflix/mediaclient/android/widget/FitCenterTopImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "bottomActionButtonBackgroundView"

    const-string v5, "getBottomActionButtonBackgroundView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleBarBackgroundView"

    const-string v5, "getTitleBarBackgroundView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playNowButton"

    const-string v5, "getPlayNowButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "showDisplayPageButton"

    const-string v5, "getShowDisplayPageButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "addToMyListToggleButton"

    const-string v5, "getAddToMyListToggleButton()Lcom/netflix/mediaclient/android/widget/NetflixToggleButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "closeSlideshowButton"

    const-string v5, "getCloseSlideshowButton()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "draggableFrame"

    const-string v4, "getDraggableFrame()Lcom/netflix/android/widgetry/widget/DragDismissFrameLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lo/Yz;->b:[Lo/amT;

    new-instance v0, Lo/Yz$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Yz$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Yz;->a:Lo/Yz$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lo/alB;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;",
            "Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p6, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v3, "LayoutInflater.from(cont\u2026youtId, container, false)"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lo/Yz;->A:Lo/alB;

    iput-object p3, p0, Lo/Yz;->F:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    iput-object p4, p0, Lo/Yz;->I:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    iput-object p5, p0, Lo/Yz;->H:Ljava/lang/String;

    iput p6, p0, Lo/Yz;->G:I

    .line 89
    iput-object p1, p0, Lo/Yz;->e:Landroid/view/ViewGroup;

    .line 91
    new-instance p2, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/previews/PreviewsSlideshowUIView$containerId$2;-><init>(Lo/Yz;)V

    check-cast p2, Lo/alB;

    invoke-static {p2}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->c:Lo/aka;

    .line 101
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oW:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->j:Lo/ams;

    .line 103
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oG:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->i:Lo/ams;

    .line 105
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oM:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->n:Lo/ams;

    .line 107
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->pc:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->o:Lo/ams;

    .line 109
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oN:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->k:Lo/ams;

    .line 111
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oX:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->m:Lo/ams;

    .line 113
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oQ:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->l:Lo/ams;

    .line 115
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oV:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->r:Lo/ams;

    .line 117
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->oL:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->s:Lo/ams;

    .line 120
    sget-object p2, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    const-class p3, Lo/UnicodeScript;

    .line 121
    invoke-static {p1, p3}, Lo/adu;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "ContextUtils.requireCont\u2026ner::class.java\n        )"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/UnicodeScript;

    .line 120
    invoke-virtual {p2, p1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    iput-object p1, p0, Lo/Yz;->p:Lo/UpdateEngine;

    .line 126
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->oT:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Yz;->q:Lo/ams;

    .line 128
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->fo:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Yz;->w:Lo/ams;

    .line 130
    new-instance p1, Lo/AnnotatedElement;

    invoke-direct {p1}, Lo/AnnotatedElement;-><init>()V

    iput-object p1, p0, Lo/Yz;->y:Lo/AnnotatedElement;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/Yz;->v:Ljava/util/List;

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 134
    fill-array-data p2, :array_0

    iput-object p2, p0, Lo/Yz;->u:[I

    .line 136
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    check-cast p2, Landroid/animation/TypeEvaluator;

    new-array p3, p1, [Ljava/lang/Object;

    aput-object v2, p3, v1

    const/4 p4, 0x1

    aput-object v2, p3, p4

    invoke-static {p2, p3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->x:Landroid/animation/ValueAnimator;

    .line 138
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    check-cast p2, Landroid/animation/TypeEvaluator;

    new-array p3, p1, [Ljava/lang/Object;

    aput-object v2, p3, v1

    aput-object v2, p3, p4

    invoke-static {p2, p3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lo/Yz;->C:Landroid/animation/ValueAnimator;

    .line 140
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lo/Yz;->z:Landroid/animation/AnimatorSet;

    .line 149
    invoke-direct {p0}, Lo/Yz;->v()Lo/GridLayout;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$Activity;->bu:I

    invoke-virtual {p2, p3}, Lo/GridLayout;->setImageResource(I)V

    .line 150
    invoke-direct {p0}, Lo/Yz;->v()Lo/GridLayout;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lo/GridLayout;->setColorFilter(I)V

    .line 152
    sget-object p2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 574
    const-class p2, Landroid/content/Context;

    invoke-static {p2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 152
    invoke-static {p2}, Lo/RemoteException;->a(Landroid/content/Context;)I

    move-result p2

    .line 153
    invoke-direct {p0}, Lo/Yz;->m()Lo/ShellCommand;

    move-result-object p3

    invoke-virtual {p3}, Lo/ShellCommand;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p5, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p6, 0x0

    if-nez p5, :cond_0

    move-object p3, p6

    :cond_0
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_1

    .line 154
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 155
    :cond_1
    new-instance p2, Lo/YC;

    move-object p3, p0

    check-cast p3, Lo/UpdateLock;

    iget-object p5, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-direct {p2, p3, p5}, Lo/YC;-><init>(Lo/UpdateLock;Ljava/util/List;)V

    iput-object p2, p0, Lo/Yz;->f:Lo/YC;

    .line 156
    invoke-direct {p0}, Lo/Yz;->m()Lo/ShellCommand;

    move-result-object p2

    iget-object p5, p0, Lo/Yz;->f:Lo/YC;

    check-cast p5, Lo/ShellCommand$StateListAnimator;

    invoke-virtual {p2, p5}, Lo/ShellCommand;->setAdapter(Lo/ShellCommand$StateListAnimator;)V

    .line 158
    new-instance p2, Lo/Yl;

    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string v0, "contentView.context"

    invoke-static {p5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-direct {p2, p5, p3, v2}, Lo/Yl;-><init>(Landroid/content/Context;Lo/UpdateLock;Ljava/util/List;)V

    iput-object p2, p0, Lo/Yz;->h:Lo/Yl;

    .line 159
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object p2

    new-instance p3, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;

    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x3fe00000    # 1.75f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/netflix/mediaclient/ui/previews/VariableScrollSpeedLinearLayoutManager;-><init>(Landroid/content/Context;FIZILo/amc;)V

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Fragment;

    invoke-virtual {p2, p3}, Lo/Yt;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 160
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object p2

    iget-object p3, p0, Lo/Yz;->h:Lo/Yl;

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p2, p3}, Lo/Yt;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 162
    iget-object p2, p0, Lo/Yz;->y:Lo/AnnotatedElement;

    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Lo/AnnotatedElement;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 164
    sget-object p2, Lo/Yl;->c:Lo/Yl$TaskDescription;

    invoke-virtual {p2, v1}, Lo/Yl$TaskDescription;->e(Z)V

    .line 166
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object p2

    invoke-direct {p0}, Lo/Yz;->m()Lo/ShellCommand;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/Yt;->setTitleBarView(Lo/ShellCommand;)V

    .line 168
    iget-object p2, p0, Lo/Yz;->C:Landroid/animation/ValueAnimator;

    new-instance p3, Lo/Yz$1;

    invoke-direct {p3, p0}, Lo/Yz$1;-><init>(Lo/Yz;)V

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    iget-object p2, p0, Lo/Yz;->x:Landroid/animation/ValueAnimator;

    new-instance p3, Lo/Yz$2;

    invoke-direct {p3, p0}, Lo/Yz$2;-><init>(Lo/Yz;)V

    check-cast p3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    iget-object p2, p0, Lo/Yz;->z:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 179
    iget-object p2, p0, Lo/Yz;->z:Landroid/animation/AnimatorSet;

    new-array p1, p1, [Landroid/animation/Animator;

    iget-object p3, p0, Lo/Yz;->C:Landroid/animation/ValueAnimator;

    check-cast p3, Landroid/animation/Animator;

    aput-object p3, p1, v1

    iget-object p3, p0, Lo/Yz;->x:Landroid/animation/ValueAnimator;

    check-cast p3, Landroid/animation/Animator;

    aput-object p3, p1, p4

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 181
    invoke-direct {p0}, Lo/Yz;->B()V

    .line 182
    invoke-direct {p0}, Lo/Yz;->D()V

    .line 184
    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "contentView.findViewById\u2026ideline_title_bar_height)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/MotionEvent;

    .line 185
    sget-object p2, Lo/gS;->b:Lo/gS$StateListAnimator;

    invoke-virtual {p2}, Lo/gS$StateListAnimator;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 186
    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->oU:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/MenuInflater;

    .line 187
    new-instance p3, Lo/Factory2;

    invoke-direct {p3}, Lo/Factory2;-><init>()V

    .line 188
    invoke-virtual {p3, p2}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 190
    invoke-virtual {p1}, Lo/MotionEvent;->getId()I

    move-result p4

    const p5, 0x3e2e147b    # 0.17f

    invoke-virtual {p3, p4, p5}, Lo/Factory2;->d(IF)V

    .line 192
    invoke-virtual {p3, p2}, Lo/Factory2;->a(Lo/MenuInflater;)V

    .line 194
    :cond_2
    invoke-virtual {p1}, Lo/MotionEvent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz p1, :cond_5

    check-cast p1, Lo/MenuInflater$StateListAnimator;

    .line 195
    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p3

    sget p4, Lcom/netflix/mediaclient/ui/R$Fragment;->hn:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "contentView.findViewById\u2026uttons_view_group_height)"

    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lo/MotionEvent;

    .line 196
    invoke-virtual {p3}, Lo/MotionEvent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_4

    check-cast p3, Lo/MenuInflater$StateListAnimator;

    .line 198
    invoke-direct {p0}, Lo/Yz;->x()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 200
    invoke-virtual {p0}, Lo/Yz;->i()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p4, "uiView.context"

    invoke-static {p2, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    const-class p4, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, p4}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 201
    new-instance p4, Lo/Oh;

    invoke-virtual {p0}, Lo/Yz;->h()Lo/ListView;

    move-result-object p5

    check-cast p5, Landroid/widget/CompoundButton;

    invoke-direct {p4, p5}, Lo/Oh;-><init>(Landroid/widget/CompoundButton;)V

    check-cast p4, Lo/Od;

    .line 202
    iget-object p5, p0, Lo/Yz;->p:Lo/UpdateEngine;

    invoke-virtual {p5}, Lo/UpdateEngine;->e()Lio/reactivex/Observable;

    move-result-object p5

    .line 199
    new-instance v0, Lo/Oc;

    invoke-direct {v0, p2, p4, p5, p6}, Lo/Oc;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Od;Lio/reactivex/Observable;Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/Yz;->t:Lo/Oc;

    goto :goto_0

    .line 206
    :cond_3
    move-object p2, p6

    check-cast p2, Lo/Oc;

    iput-object p2, p0, Lo/Yz;->t:Lo/Oc;

    .line 209
    :goto_0
    invoke-direct {p0}, Lo/Yz;->u()Lo/ResultReceiver;

    move-result-object p2

    new-instance p4, Lo/Yz$4;

    invoke-direct {p4, p0}, Lo/Yz$4;-><init>(Lo/Yz;)V

    check-cast p4, Lo/ResultReceiver$TaskDescription;

    invoke-virtual {p2, p4}, Lo/ResultReceiver;->setDragListener(Lo/ResultReceiver$TaskDescription;)V

    .line 228
    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p2

    .line 576
    new-instance p4, Lo/Yz$StateListAnimator;

    invoke-direct {p4, p0, p1, p3}, Lo/Yz$StateListAnimator;-><init>(Lo/Yz;Lo/MenuInflater$StateListAnimator;Lo/MenuInflater$StateListAnimator;)V

    check-cast p4, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, p4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 233
    new-instance p1, Lo/EditText;

    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2, p6}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p1, p0, Lo/Yz;->D:Lo/EditText;

    return-void

    .line 196
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final B()V
    .locals 2

    .line 241
    invoke-direct {p0}, Lo/Yz;->v()Lo/GridLayout;

    move-result-object v0

    new-instance v1, Lo/Yz$Application;

    invoke-direct {v1, p0}, Lo/Yz$Application;-><init>(Lo/Yz;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-direct {p0}, Lo/Yz;->p()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/Yz$TaskDescription;

    invoke-direct {v1, p0}, Lo/Yz$TaskDescription;-><init>(Lo/Yz;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-direct {p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lo/Yz$Dialog;

    invoke-direct {v1, p0}, Lo/Yz$Dialog;-><init>(Lo/Yz;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final C()Lo/Am;
    .locals 3

    .line 283
    invoke-virtual {p0}, Lo/Yz;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final D()V
    .locals 2

    .line 480
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    new-instance v1, Lo/Yz$Fragment;

    invoke-direct {v1, p0}, Lo/Yz$Fragment;-><init>(Lo/Yz;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {v0, v1}, Lo/Yt;->setItemScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method public static final synthetic a(Lo/Yz;)Lo/Yt;
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lo/Yn;)V
    .locals 12

    .line 433
    iget-object v0, p0, Lo/Yz;->B:Lo/Yn;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p1}, Lo/Yn;->getForegroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/Yz;->e(I)V

    .line 435
    iget-object v0, p0, Lo/Yz;->u:[I

    invoke-virtual {p1}, Lo/Yn;->b()I

    move-result v4

    aput v4, v0, v3

    .line 436
    invoke-direct {p0}, Lo/Yz;->r()Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v5, p0, Lo/Yz;->u:[I

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 437
    invoke-direct {p0}, Lo/Yz;->s()Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v5, p0, Lo/Yz;->u:[I

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 440
    iget-object v4, p0, Lo/Yz;->C:Landroid/animation/ValueAnimator;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/Yn;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p1}, Lo/Yn;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 441
    iget-object v4, p0, Lo/Yz;->x:Landroid/animation/ValueAnimator;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/Yn;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p1}, Lo/Yn;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lo/Yz;->z:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 445
    :cond_1
    :goto_0
    iput-object p1, p0, Lo/Yz;->B:Lo/Yn;

    .line 447
    invoke-direct {p0}, Lo/Yz;->C()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_2

    .line 448
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v3, "service not ready, can not update action buttons"

    invoke-interface {v0, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 451
    :cond_2
    invoke-direct {p0}, Lo/Yz;->C()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 453
    iget-object v3, p0, Lo/Yz;->t:Lo/Oc;

    if-eqz v3, :cond_3

    .line 454
    invoke-virtual {p1}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "previewItem.id"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Lo/Yn;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    const-string v6, "previewItem.type"

    invoke-static {v5, v6}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v6

    check-cast v6, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 457
    invoke-virtual {p1}, Lo/Yn;->e()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v7

    .line 453
    invoke-virtual {v3, v4, v5, v6, v7}, Lo/Oc;->d(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 460
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 462
    invoke-virtual {p1}, Lo/Yn;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    sget-object v6, Lo/Yy;->d:[I

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v1, :cond_6

    if-eq v5, v2, :cond_5

    .line 473
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not handled, cta buttons for preview slide show will not work"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 468
    :cond_5
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    invoke-virtual {p1}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v5, Lo/Yz$ActionBar;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p0, v3, p1}, Lo/Yz$ActionBar;-><init>(Lo/Yz;Ljava/lang/String;Lo/Yn;)V

    check-cast v5, Lo/zU;

    invoke-interface {v0, v1, v2, v5}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_2

    .line 464
    :cond_6
    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v6

    invoke-virtual {p1}, Lo/Yn;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v0, Lo/Yz$ActionBar;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lo/Yz$ActionBar;-><init>(Lo/Yz;Ljava/lang/String;Lo/Yn;)V

    move-object v11, v0

    check-cast v11, Lo/zU;

    invoke-interface/range {v6 .. v11}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public static final synthetic b(Lo/Yz;)Landroid/view/View;
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/Yz;->r()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo/Yz;)Landroid/view/View;
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/Yz;->s()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lo/Yz;)[I
    .locals 0

    .line 72
    iget-object p0, p0, Lo/Yz;->u:[I

    return-object p0
.end method

.method public static final synthetic e(Lo/Yz;)Lo/alB;
    .locals 0

    .line 72
    iget-object p0, p0, Lo/Yz;->A:Lo/alB;

    return-object p0
.end method

.method public static final synthetic j(Lo/Yz;)Lo/Yl;
    .locals 0

    .line 72
    iget-object p0, p0, Lo/Yz;->h:Lo/Yl;

    return-object p0
.end method

.method private final m()Lo/ShellCommand;
    .locals 3

    iget-object v0, p0, Lo/Yz;->j:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ShellCommand;

    return-object v0
.end method

.method private final p()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Yz;->r:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final q()Lo/Yt;
    .locals 3

    iget-object v0, p0, Lo/Yz;->i:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Yt;

    return-object v0
.end method

.method private final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Yz;->m:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Yz;->k:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final t()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Yz;->l:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final u()Lo/ResultReceiver;
    .locals 3

    iget-object v0, p0, Lo/Yz;->w:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ResultReceiver;

    return-object v0
.end method

.method private final v()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/Yz;->q:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method private final x()Z
    .locals 1

    .line 237
    sget-object v0, Lo/eD;->a:Lo/eD$Activity;

    invoke-virtual {v0}, Lo/eD$Activity;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Yz;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 3

    .line 393
    iget-object p1, p0, Lo/Yz;->B:Lo/Yn;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Yn;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 396
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 573
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 396
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    const-string v1, "LocalBroadcastManager.getInstance(Lookup.get())"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SMOOTH_SCROLL_TO_PREVIEW_ON_EXIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v2, "position"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    goto :goto_1

    .line 401
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/Yz;->a:Lo/Yz$Activity;

    invoke-virtual {v1}, Lo/Yz$Activity;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": position is null for currPreviewItemInView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Yz;->B:Lo/Yn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " upon exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lo/Am;)V
    .locals 1

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lo/Am;->j()Lo/Ah;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    iput-object p1, p0, Lo/Yz;->g:Lo/Ah;

    .line 277
    invoke-interface {p1}, Lo/Ah;->e()Lo/Ab;

    move-result-object p1

    iput-object p1, p0, Lo/Yz;->d:Lo/Ab;

    .line 278
    iget-object p1, p0, Lo/Yz;->h:Lo/Yl;

    iget-object v0, p0, Lo/Yz;->d:Lo/Ab;

    invoke-virtual {p1, v0}, Lo/Yl;->e(Lo/Ab;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 337
    invoke-direct {p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 339
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "launchPlayer"

    invoke-virtual {v0, v1, v2}, Lo/Yt;->setPlaybackState(ZLjava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Yt;->scrollToPosition(I)V

    .line 342
    new-instance v0, Lo/YB$ActionBar;

    invoke-direct {v0, p1}, Lo/YB$ActionBar;-><init>(I)V

    invoke-virtual {p0, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V
    .locals 0

    const-string p2, "previewItem"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    move-object p2, p1

    check-cast p2, Lo/Bc;

    invoke-virtual {p3, p2}, Lo/Yn;->d(Lo/Bc;)V

    .line 521
    iget-object p2, p0, Lo/Yz;->t:Lo/Oc;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/Bb;->aW()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lo/Oc;->d(Z)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p1, :cond_1

    .line 354
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Yt;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;Lo/Yn;)V
    .locals 0

    const-string p2, "previewItem"

    invoke-static {p3, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    move-object p2, p1

    check-cast p2, Lo/Bc;

    invoke-virtual {p3, p2}, Lo/Yn;->d(Lo/Bc;)V

    .line 526
    iget-object p2, p0, Lo/Yz;->t:Lo/Oc;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/AX;->aW()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lo/Oc;->d(Z)V

    :cond_1
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lo/Yz;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 346
    iget-object v0, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, p1, :cond_1

    .line 347
    sget-object v0, Lo/Yz;->a:Lo/Yz$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 348
    iget-object v0, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Yn;

    invoke-direct {p0, p1}, Lo/Yz;->a(Lo/Yn;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lo/YA;)V
    .locals 3

    const-string v0, "prop"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    instance-of v0, p1, Lo/YA$Application;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 371
    check-cast p1, Lo/YA$Application;

    invoke-virtual {p1}, Lo/YA$Application;->d()Lo/Yw;

    move-result-object v0

    invoke-virtual {v0}, Lo/Yw;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 372
    invoke-virtual {p1}, Lo/YA$Application;->d()Lo/Yw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Yw;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    if-lt p1, v0, :cond_4

    .line 373
    new-instance p1, Lo/YB$TaskStackBuilder;

    iget-object v2, p0, Lo/Yz;->F:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/Yz;->I:Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsLolomoViewData;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p1, v0, v1}, Lo/YB$TaskStackBuilder;-><init>(IZ)V

    invoke-virtual {p0, p1}, Lo/Yz;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 378
    :cond_2
    instance-of v0, p1, Lo/YA$ActionBar;

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object v0, p0, Lo/Yz;->v:Ljava/util/List;

    check-cast p1, Lo/YA$ActionBar;

    invoke-virtual {p1}, Lo/YA$ActionBar;->e()Lo/Yw;

    move-result-object p1

    invoke-virtual {p1}, Lo/Yw;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    iget-object p1, p0, Lo/Yz;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 385
    :cond_3
    invoke-direct {p0}, Lo/Yz;->m()Lo/ShellCommand;

    move-result-object p1

    invoke-virtual {p1}, Lo/ShellCommand;->a()V

    .line 386
    iget-object p1, p0, Lo/Yz;->h:Lo/Yl;

    invoke-virtual {p1}, Lo/Yl;->notifyDataSetChanged()V

    .line 387
    iget-object p1, p0, Lo/Yz;->h:Lo/Yl;

    invoke-virtual {p1, v1}, Lo/Yl;->b(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public e(I)V
    .locals 18

    move/from16 v0, p1

    .line 412
    invoke-direct/range {p0 .. p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setTextColor(I)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 414
    invoke-direct/range {p0 .. p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 415
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 418
    :cond_1
    invoke-direct/range {p0 .. p0}, Lo/Yz;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual/range {p0 .. p0}, Lo/Yz;->h()Lo/ListView;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 420
    invoke-static/range {p1 .. p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    const-string v1, "ColorStateList.valueOf(color)"

    invoke-static {v8, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-static/range {p1 .. p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-static {v7, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7f3

    const/16 v17, 0x0

    .line 419
    invoke-static/range {v4 .. v17}, Lo/ListView;->d(Lo/ListView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ZIIIIZZILjava/lang/Object;)V

    .line 425
    :cond_2
    invoke-direct/range {p0 .. p0}, Lo/Yz;->p()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setTextColor(I)V

    .line 426
    invoke-direct/range {p0 .. p0}, Lo/Yz;->p()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lo/HorizontalScrollView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    if-eqz v4, :cond_3

    .line 427
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public e(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/Yt;->setPlaybackState(ZLjava/lang/String;)V

    return-void
.end method

.method protected final f()Lo/Yn;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/Yz;->B:Lo/Yn;

    return-object v0
.end method

.method protected final h()Lo/ListView;
    .locals 3

    iget-object v0, p0, Lo/Yz;->s:Lo/ams;

    sget-object v1, Lo/Yz;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ListView;

    return-object v0
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 89
    iget-object v0, p0, Lo/Yz;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 294
    iget-object v0, p0, Lo/Yz;->A:Lo/alB;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/Yz;->D:Lo/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/EditText;->b()V

    .line 299
    :cond_0
    invoke-direct {p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 4

    .line 406
    invoke-direct {p0}, Lo/Yz;->q()Lo/Yt;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lo/Yt;->setPlaybackState$default(Lo/Yt;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lo/Yz;->d:Lo/Ab;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/Yz;->g:Lo/Ah;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lo/Ah;->e(Lo/Ab;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lo/Yz;->h:Lo/Yl;

    check-cast v1, Lo/Ab;

    invoke-virtual {v0, v1}, Lo/Yl;->e(Lo/Ab;)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 303
    iget-object v0, p0, Lo/Yz;->D:Lo/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 304
    :cond_0
    invoke-direct {p0}, Lo/Yz;->t()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public o()Z
    .locals 2

    .line 362
    invoke-virtual {p0}, Lo/Yz;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
