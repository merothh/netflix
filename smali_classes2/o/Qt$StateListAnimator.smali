.class public Lo/Qt$StateListAnimator;
.super Lo/FU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field public a:Landroid/view/View;

.field public b:Lo/Lw;

.field private final c:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private k:I

.field private final l:Lo/ams;

.field private final m:Landroid/util/TypedValue;

.field private final n:Lo/ams;

.field private final o:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Qt$StateListAnimator;

    const/16 v1, 0x9

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "titleView"

    const-string v5, "getTitleView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "sizeView"

    const-string v5, "getSizeView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "errorView"

    const-string v5, "getErrorView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "progressBarView"

    const-string v5, "getProgressBarView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "playIcon"

    const-string v5, "getPlayIcon()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

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

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "checkBoxView"

    const-string v5, "getCheckBoxView()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "findMoreButton"

    const-string v5, "getFindMoreButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "findMoreButtonContainer"

    const-string v4, "getFindMoreButtonContainer()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 238
    invoke-direct {p0}, Lo/FU;-><init>()V

    .line 242
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->c:Lo/ams;

    .line 243
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rC:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->i:Lo/ams;

    .line 244
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gD:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->g:Lo/ams;

    .line 245
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pJ:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->j:Lo/ams;

    .line 246
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mN:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->h:Lo/ams;

    .line 247
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fc:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->f:Lo/ams;

    .line 248
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ce:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->l:Lo/ams;

    .line 249
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gQ:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->n:Lo/ams;

    .line 250
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gW:I

    invoke-static {p0, v0}, Lo/FR;->b(Lo/FU;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Qt$StateListAnimator;->o:Lo/ams;

    .line 251
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lo/Qt$StateListAnimator;->m:Landroid/util/TypedValue;

    return-void
.end method


# virtual methods
.method public final a()Lo/Lw;
    .locals 2

    .line 240
    iget-object v0, p0, Lo/Qt$StateListAnimator;->b:Lo/Lw;

    if-nez v0, :cond_0

    const-string v1, "progressLine"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->g:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->i:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-super {p0, p1}, Lo/FU;->c(Landroid/view/View;)V

    .line 256
    iput-object p1, p0, Lo/Qt$StateListAnimator;->a:Landroid/view/View;

    .line 257
    new-instance v0, Lo/Lw;

    .line 258
    iget-object v1, p0, Lo/Qt$StateListAnimator;->a:Landroid/view/View;

    const-string v2, "baseView"

    if-nez v1, :cond_0

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->g:I

    invoke-static {v1, v3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    .line 259
    iget-object v3, p0, Lo/Qt$StateListAnimator;->a:Landroid/view/View;

    if-nez v3, :cond_1

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$Application;->w:I

    invoke-static {v2, v3}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v2

    .line 260
    sget-object v3, Lo/Qt;->f:Lo/Qt$TaskDescription;

    invoke-virtual {v3}, Lo/Qt$TaskDescription;->c()F

    move-result v3

    .line 257
    invoke-direct {v0, v1, v2, v3}, Lo/Lw;-><init>(IIF)V

    iput-object v0, p0, Lo/Qt$StateListAnimator;->b:Lo/Lw;

    .line 262
    invoke-virtual {p0}, Lo/Qt$StateListAnimator;->j()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Qt$StateListAnimator;->b:Lo/Lw;

    if-nez v1, :cond_2

    const-string v2, "progressLine"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "itemView.context"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 265
    sget v0, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->d:I

    .line 266
    iget-object v1, p0, Lo/Qt$StateListAnimator;->m:Landroid/util/TypedValue;

    const/4 v2, 0x1

    .line 264
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 270
    iget-object p1, p0, Lo/Qt$StateListAnimator;->m:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lo/Qt$StateListAnimator;->k:I

    :cond_3
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .line 239
    iget-object v0, p0, Lo/Qt$StateListAnimator;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "baseView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final e()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->c:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final f()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->h:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public final h()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->l:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final i()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->f:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method public final j()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->j:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 252
    iget v0, p0, Lo/Qt$StateListAnimator;->k:I

    return v0
.end method

.method public final l()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->n:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Qt$StateListAnimator;->o:Lo/ams;

    sget-object v1, Lo/Qt$StateListAnimator;->e:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
