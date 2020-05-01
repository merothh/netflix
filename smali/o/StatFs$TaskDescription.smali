.class Lo/StatFs$TaskDescription;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic a:Lo/StatFs;

.field private b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:I

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private i:F

.field private j:Z

.field private l:Z


# direct methods
.method private constructor <init>(Lo/StatFs;IIZ)V
    .locals 3

    .line 770
    iput-object p1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 763
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    .line 764
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    .line 765
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 766
    iput v0, p0, Lo/StatFs$TaskDescription;->i:F

    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lo/StatFs$TaskDescription;->j:Z

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lo/StatFs$TaskDescription;->l:Z

    .line 772
    invoke-virtual {p1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/StatFs$TaskDescription;->c:Landroid/graphics/drawable/Drawable;

    .line 773
    iget-object p2, p0, Lo/StatFs$TaskDescription;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lo/StatFs;->m(Lo/StatFs;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lo/IHwInterface$StateListAnimator;->f:I

    goto :goto_0

    :cond_0
    sget v2, Lo/IHwInterface$StateListAnimator;->l:I

    :goto_0
    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p2, v1}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 775
    invoke-virtual {p1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/StatFs$TaskDescription;->e:Landroid/graphics/drawable/Drawable;

    .line 776
    iget-object p2, p0, Lo/StatFs$TaskDescription;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Lo/StatFs;->m(Lo/StatFs;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lo/IHwInterface$StateListAnimator;->f:I

    goto :goto_1

    :cond_1
    sget v1, Lo/IHwInterface$StateListAnimator;->l:I

    :goto_1
    invoke-static {p3, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p2, p3}, Lo/AccessibilityRecord;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 778
    invoke-virtual {p1}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p4, :cond_2

    sget p2, Lo/IHwInterface$Activity;->u:I

    goto :goto_2

    :cond_2
    sget p2, Lo/IHwInterface$Activity;->q:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lo/StatFs$TaskDescription;->d:I

    .line 779
    invoke-direct {p0, p4}, Lo/StatFs$TaskDescription;->b(Z)V

    .line 780
    invoke-virtual {p0, v0}, Lo/StatFs$TaskDescription;->e(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lo/StatFs;IIZLo/StatFs$3;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1, p2, p3, p4}, Lo/StatFs$TaskDescription;-><init>(Lo/StatFs;IIZ)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 784
    iget-object v0, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-static {v0}, Lo/StatFs;->m(Lo/StatFs;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/IHwInterface$StateListAnimator;->f:I

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 786
    iget-object v0, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    sget v2, Lo/IHwInterface$StateListAnimator;->d:I

    goto :goto_0

    :cond_0
    sget v2, Lo/IHwInterface$StateListAnimator;->i:I

    :goto_0
    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    iget-object v0, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    sget p1, Lo/IHwInterface$StateListAnimator;->g:I

    goto :goto_1

    :cond_1
    sget p1, Lo/IHwInterface$StateListAnimator;->h:I

    :goto_1
    invoke-static {v1, p1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 789
    :cond_2
    iget-object v0, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/IHwInterface$StateListAnimator;->l:I

    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 790
    iget-object v0, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    sget v2, Lo/IHwInterface$StateListAnimator;->n:I

    goto :goto_2

    :cond_3
    sget v2, Lo/IHwInterface$StateListAnimator;->o:I

    :goto_2
    invoke-static {v1, v2}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 791
    iget-object v0, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v1}, Lo/StatFs;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_4

    sget p1, Lo/IHwInterface$StateListAnimator;->r:I

    goto :goto_3

    :cond_4
    sget p1, Lo/IHwInterface$StateListAnimator;->m:I

    :goto_3
    invoke-static {v1, p1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 793
    :goto_4
    iget-object p1, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 794
    iget-object p1, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 795
    iget-object p1, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 796
    iget-object p1, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 797
    iget-object p1, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 798
    iget-object p1, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 799
    iget-object p1, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 800
    iget-object p1, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    iget-object v0, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-virtual {v0}, Lo/StatFs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/IHwInterface$Activity;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 820
    iput-boolean p1, p0, Lo/StatFs$TaskDescription;->j:Z

    return-void
.end method

.method b(I)V
    .locals 1

    .line 887
    iget-object v0, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 888
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->invalidateSelf()V

    return-void
.end method

.method public c(F)V
    .locals 0

    .line 882
    iput p1, p0, Lo/StatFs$TaskDescription;->i:F

    .line 883
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->invalidateSelf()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 824
    iget-boolean v0, p0, Lo/StatFs$TaskDescription;->l:Z

    return v0
.end method

.method d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 828
    iget-boolean v0, p0, Lo/StatFs$TaskDescription;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatFs$TaskDescription;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/StatFs$TaskDescription;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 834
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 838
    iget-object v1, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v1, v0, v1

    iget v2, p0, Lo/StatFs$TaskDescription;->i:F

    mul-float v1, v1, v2

    .line 839
    iget-object v2, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 840
    iget-object v2, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-lez v2, :cond_0

    .line 841
    iget-object v2, p0, Lo/StatFs$TaskDescription;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 843
    :cond_0
    iget-object v2, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 848
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 849
    iget v1, p0, Lo/StatFs$TaskDescription;->i:F

    iget-object v2, p0, Lo/StatFs$TaskDescription;->a:Lo/StatFs;

    invoke-static {v2}, Lo/StatFs;->e(Lo/StatFs;)Lo/StatFs$Activity;

    move-result-object v2

    invoke-static {v2}, Lo/StatFs$Activity;->d(Lo/StatFs$Activity;)F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    .line 850
    iget-object v2, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 851
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 852
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 853
    iget-object v0, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 854
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 804
    iget-object v0, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/StatFs$TaskDescription;->l:Z

    if-eq v0, p1, :cond_1

    .line 805
    :cond_0
    iput-boolean p1, p0, Lo/StatFs$TaskDescription;->l:Z

    .line 806
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    .line 807
    iget p1, p0, Lo/StatFs$TaskDescription;->d:I

    int-to-float p1, p1

    const v0, 0x3f2e147b    # 0.68f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 808
    iget-object v0, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 809
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 861
    iget-object v0, p0, Lo/StatFs$TaskDescription;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 862
    iget-object v0, p0, Lo/StatFs$TaskDescription;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 863
    iget-boolean v0, p0, Lo/StatFs$TaskDescription;->j:Z

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 866
    :cond_0
    iget-object p1, p0, Lo/StatFs$TaskDescription;->b:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 868
    :goto_0
    invoke-virtual {p0}, Lo/StatFs$TaskDescription;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
