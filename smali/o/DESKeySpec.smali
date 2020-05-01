.class public Lo/DESKeySpec;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DESKeySpec$Activity;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Lo/DESedeKeySpec;

.field b:Lo/PSource;

.field d:Lo/SecretKey;

.field private final e:Landroid/graphics/Matrix;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/DESKeySpec$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:F

.field private final j:Lo/ActivityGroup;

.field private k:Lo/FloatEvaluator;

.field private l:Lo/NoSuchPaddingException;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lo/FloatArrayEvaluator;

.field private p:Lo/ColorRes;

.field private q:I

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lo/DESKeySpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/DESKeySpec;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/DESKeySpec;->e:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Lo/ActivityGroup;

    invoke-direct {v0}, Lo/ActivityGroup;-><init>()V

    iput-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lo/DESKeySpec;->i:F

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lo/DESKeySpec;->g:Z

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/DESKeySpec;->h:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    const/16 v0, 0xff

    .line 86
    iput v0, p0, Lo/DESKeySpec;->q:I

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lo/DESKeySpec;->r:Z

    .line 117
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    new-instance v1, Lo/DESKeySpec$3;

    invoke-direct {v1, p0}, Lo/DESKeySpec$3;-><init>(Lo/DESKeySpec;)V

    invoke-virtual {v0, v1}, Lo/ActivityGroup;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lo/DESKeySpec;)Lo/ActivityGroup;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    return-object p0
.end method

.method static synthetic c(Lo/DESKeySpec;)Lo/ColorRes;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;)F
    .locals 2

    .line 1044
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1045
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1046
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private u()Landroid/content/Context;
    .locals 3

    .line 997
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1002
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1003
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private v()Lo/FloatEvaluator;
    .locals 3

    .line 983
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 988
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->k:Lo/FloatEvaluator;

    if-nez v0, :cond_1

    .line 989
    new-instance v0, Lo/FloatEvaluator;

    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lo/DESKeySpec;->d:Lo/SecretKey;

    invoke-direct {v0, v1, v2}, Lo/FloatEvaluator;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lo/SecretKey;)V

    iput-object v0, p0, Lo/DESKeySpec;->k:Lo/FloatEvaluator;

    .line 992
    :cond_1
    iget-object v0, p0, Lo/DESKeySpec;->k:Lo/FloatEvaluator;

    return-object v0
.end method

.method private w()Lo/FloatArrayEvaluator;
    .locals 5

    .line 956
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 961
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/DESKeySpec;->u()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/FloatArrayEvaluator;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 962
    iput-object v1, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    .line 965
    :cond_1
    iget-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    if-nez v0, :cond_2

    .line 966
    new-instance v0, Lo/FloatArrayEvaluator;

    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lo/DESKeySpec;->m:Ljava/lang/String;

    iget-object v3, p0, Lo/DESKeySpec;->l:Lo/NoSuchPaddingException;

    iget-object v4, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 967
    invoke-virtual {v4}, Lo/DESedeKeySpec;->k()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lo/FloatArrayEvaluator;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lo/NoSuchPaddingException;Ljava/util/Map;)V

    iput-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    .line 970
    :cond_2
    iget-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    return-object v0
.end method

.method private x()V
    .locals 3

    .line 818
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    return-void

    .line 821
    :cond_0
    invoke-virtual {p0}, Lo/DESKeySpec;->r()F

    move-result v0

    .line 822
    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 823
    invoke-virtual {v2}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 822
    invoke-virtual {p0, v2, v2, v1, v0}, Lo/DESKeySpec;->setBounds(IIII)V

    return-void
.end method

.method private y()V
    .locals 4

    .line 249
    new-instance v0, Lo/ColorRes;

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 250
    invoke-static {v1}, Lo/PluralsRes;->e(Lo/DESedeKeySpec;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v2}, Lo/DESedeKeySpec;->i()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-direct {v0, p0, v1, v2, v3}, Lo/ColorRes;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lo/DESedeKeySpec;)V

    iput-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    return-void
.end method


# virtual methods
.method public a(Lo/IntKeyframeSet;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            ")",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 861
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    .line 862
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 864
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    iget-object v1, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    new-instance v2, Lo/IntKeyframeSet;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lo/IntKeyframeSet;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lo/ColorRes;->d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 391
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 392
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->f()V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 610
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->b(F)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 650
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$5;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$5;-><init>(Lo/DESKeySpec;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->c(F)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 539
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$2;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$2;-><init>(Lo/DESKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 548
    :cond_0
    invoke-virtual {v0, p1}, Lo/DESedeKeySpec;->d(Ljava/lang/String;)Lo/KeyframeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 552
    iget p1, v0, Lo/KeyframeSet;->b:F

    float-to-int p1, p1

    .line 553
    iget v0, v0, Lo/KeyframeSet;->a:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lo/DESKeySpec;->b(II)V

    return-void

    .line 550
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lo/NoSuchPaddingException;)V
    .locals 1

    .line 779
    iput-object p1, p0, Lo/DESKeySpec;->l:Lo/NoSuchPaddingException;

    .line 780
    iget-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0, p1}, Lo/FloatArrayEvaluator;->e(Lo/NoSuchPaddingException;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 234
    iput-boolean p1, p0, Lo/DESKeySpec;->s:Z

    .line 235
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lo/DESedeKeySpec;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Lo/DESedeKeySpec;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 209
    :cond_0
    iput-boolean v1, p0, Lo/DESKeySpec;->r:Z

    .line 210
    invoke-virtual {p0}, Lo/DESKeySpec;->b()V

    .line 211
    iput-object p1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 212
    invoke-direct {p0}, Lo/DESKeySpec;->y()V

    .line 213
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->a(Lo/DESedeKeySpec;)V

    .line 214
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lo/DESKeySpec;->b(F)V

    .line 215
    iget v0, p0, Lo/DESKeySpec;->i:F

    invoke-virtual {p0, v0}, Lo/DESKeySpec;->e(F)V

    .line 216
    invoke-direct {p0}, Lo/DESKeySpec;->x()V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 221
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DESKeySpec$Activity;

    .line 223
    invoke-interface {v1, p1}, Lo/DESKeySpec$Activity;->e(Lo/DESedeKeySpec;)V

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-boolean v0, p0, Lo/DESKeySpec;->s:Z

    invoke-virtual {p1, v0}, Lo/DESedeKeySpec;->b(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 948
    invoke-direct {p0}, Lo/DESKeySpec;->w()Lo/FloatArrayEvaluator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0, p1}, Lo/FloatArrayEvaluator;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 254
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 258
    iput-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    .line 259
    iput-object v0, p0, Lo/DESKeySpec;->o:Lo/FloatArrayEvaluator;

    .line 260
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->j()V

    .line 261
    invoke-virtual {p0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public b(F)V
    .locals 3

    .line 671
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$10;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$10;-><init>(Lo/DESKeySpec;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    iget-object v2, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v2}, Lo/DESedeKeySpec;->g()F

    move-result v2

    invoke-static {v0, v2, p1}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lo/ActivityGroup;->c(F)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 456
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$14;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$14;-><init>(Lo/DESKeySpec;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->a(F)V

    return-void
.end method

.method public b(II)V
    .locals 2

    .line 561
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$4;

    invoke-direct {v1, p0, p1, p2}, Lo/DESKeySpec$4;-><init>(Lo/DESKeySpec;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lo/ActivityGroup;->c(FF)V

    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .line 744
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lo/DESKeySpec;->g:Z

    return-void
.end method

.method public b(Lo/PSource;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lo/DESKeySpec;->b:Lo/PSource;

    return-void
.end method

.method public b(Lo/SecretKey;)V
    .locals 1

    .line 790
    iput-object p1, p0, Lo/DESKeySpec;->d:Lo/SecretKey;

    .line 791
    iget-object v0, p0, Lo/DESKeySpec;->k:Lo/FloatEvaluator;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1}, Lo/FloatEvaluator;->b(Lo/SecretKey;)V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 2

    .line 479
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$15;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$15;-><init>(Lo/DESKeySpec;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 488
    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/DESKeySpec;->b(I)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 417
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$6;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$6;-><init>(Lo/DESKeySpec;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->d(I)V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 633
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 517
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$12;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$12;-><init>(Lo/DESKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 526
    :cond_0
    invoke-virtual {v0, p1}, Lo/DESedeKeySpec;->d(Ljava/lang/String;)Lo/KeyframeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget p1, v0, Lo/KeyframeSet;->b:F

    iget v0, v0, Lo/KeyframeSet;->a:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/DESKeySpec;->b(I)V

    return-void

    .line 528
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/IntKeyframeSet;",
            "TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    if-nez v0, :cond_0

    .line 879
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/DESKeySpec$8;-><init>(Lo/DESKeySpec;Lo/IntKeyframeSet;Ljava/lang/Object;Lo/AlarmManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 888
    :cond_0
    invoke-virtual {p1}, Lo/IntKeyframeSet;->e()Lo/Keyframe;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 889
    invoke-virtual {p1}, Lo/IntKeyframeSet;->e()Lo/Keyframe;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lo/Keyframe;->c(Ljava/lang/Object;Lo/AlarmManager;)V

    goto :goto_1

    .line 892
    :cond_1
    invoke-virtual {p0, p1}, Lo/DESKeySpec;->a(Lo/IntKeyframeSet;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 894
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 896
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/IntKeyframeSet;

    invoke-virtual {v2}, Lo/IntKeyframeSet;->e()Lo/Keyframe;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lo/Keyframe;->c(Ljava/lang/Object;Lo/AlarmManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    .line 901
    invoke-virtual {p0}, Lo/DESKeySpec;->invalidateSelf()V

    .line 902
    sget-object p1, Lo/IvParameterSpec;->D:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    .line 906
    invoke-virtual {p0}, Lo/DESKeySpec;->s()F

    move-result p1

    invoke-virtual {p0, p1}, Lo/DESKeySpec;->b(F)V

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lo/DESKeySpec;->n:Z

    return v0
.end method

.method public d()V
    .locals 2

    .line 371
    iget-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$9;

    invoke-direct {v1, p0}, Lo/DESKeySpec$9;-><init>(Lo/DESKeySpec;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 381
    :cond_0
    iget-boolean v0, p0, Lo/DESKeySpec;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/DESKeySpec;->o()I

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_1
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->i()V

    .line 384
    :cond_2
    iget-boolean v0, p0, Lo/DESKeySpec;->g:Z

    if-nez v0, :cond_4

    .line 385
    invoke-virtual {p0}, Lo/DESKeySpec;->h()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lo/DESKeySpec;->g()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo/DESKeySpec;->j()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lo/DESKeySpec;->a(I)V

    :cond_4
    return-void
.end method

.method public d(F)V
    .locals 2

    .line 440
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$13;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$13;-><init>(Lo/DESKeySpec;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 449
    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/DESKeySpec;->c(I)V

    return-void
.end method

.method public d(FF)V
    .locals 2

    .line 581
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$1;

    invoke-direct {v1, p0, p1, p2}, Lo/DESKeySpec$1;-><init>(Lo/DESKeySpec;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 591
    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v0, v1, p1}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    .line 592
    invoke-virtual {v0}, Lo/DESedeKeySpec;->f()F

    move-result v0

    iget-object v1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->g()F

    move-result v1

    invoke-static {v0, v1, p2}, Lo/ActivityManagerInternal;->a(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 591
    invoke-virtual {p0, p1, p2}, Lo/DESKeySpec;->b(II)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 721
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->setRepeatCount(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 496
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$11;

    invoke-direct {v1, p0, p1}, Lo/DESKeySpec$11;-><init>(Lo/DESKeySpec;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 505
    :cond_0
    invoke-virtual {v0, p1}, Lo/DESedeKeySpec;->d(Ljava/lang/String;)Lo/KeyframeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    iget p1, v0, Lo/KeyframeSet;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lo/DESKeySpec;->c(I)V

    return-void

    .line 507
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Z)V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lo/DESKeySpec;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 157
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string p1, "Merge paths are not supported pre-Kit Kat."

    .line 158
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    return-void

    .line 161
    :cond_1
    iput-boolean p1, p0, Lo/DESKeySpec;->n:Z

    .line 162
    iget-object p1, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-eqz p1, :cond_2

    .line 163
    invoke-direct {p0}, Lo/DESKeySpec;->y()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lo/DESKeySpec;->r:Z

    const-string v0, "Drawable#draw"

    .line 300
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    if-nez v1, :cond_0

    return-void

    .line 305
    :cond_0
    iget v1, p0, Lo/DESKeySpec;->i:F

    .line 307
    invoke-direct {p0, p1}, Lo/DESKeySpec;->d(Landroid/graphics/Canvas;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 310
    iget v1, p0, Lo/DESKeySpec;->i:F

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v4, -0x1

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 324
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 325
    iget-object v3, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v3}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 326
    iget-object v6, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v6}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float v5, v3, v2

    mul-float v7, v6, v2

    .line 331
    invoke-virtual {p0}, Lo/DESKeySpec;->r()F

    move-result v8

    mul-float v8, v8, v3

    sub-float/2addr v8, v5

    .line 332
    invoke-virtual {p0}, Lo/DESKeySpec;->r()F

    move-result v3

    mul-float v3, v3, v6

    sub-float/2addr v3, v7

    .line 330
    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 336
    :cond_2
    iget-object v1, p0, Lo/DESKeySpec;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 337
    iget-object v1, p0, Lo/DESKeySpec;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 338
    iget-object v1, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    iget-object v2, p0, Lo/DESKeySpec;->e:Landroid/graphics/Matrix;

    iget v3, p0, Lo/DESKeySpec;->q:I

    invoke-virtual {v1, p1, v2, v3}, Lo/ColorRes;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 339
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    if-lez v4, :cond_3

    .line 342
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 975
    invoke-direct {p0}, Lo/DESKeySpec;->v()Lo/FloatEvaluator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0, p1, p2}, Lo/FloatEvaluator;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/DESKeySpec;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e(F)V
    .locals 0

    .line 762
    iput p1, p0, Lo/DESKeySpec;->i:F

    .line 763
    invoke-direct {p0}, Lo/DESKeySpec;->x()V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 699
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->setRepeatMode(I)V

    return-void
.end method

.method public e(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0, p1}, Lo/ActivityGroup;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lo/DESKeySpec;->m:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    .line 667
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->e()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public g()F
    .locals 1

    .line 433
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->k()F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 284
    iget v0, p0, Lo/DESKeySpec;->q:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 848
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/DESKeySpec;->r()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 843
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/DESKeySpec;->r()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()F
    .locals 1

    .line 617
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->h()F

    move-result v0

    return v0
.end method

.method public i()V
    .locals 2

    .line 401
    iget-object v0, p0, Lo/DESKeySpec;->p:Lo/ColorRes;

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    new-instance v1, Lo/DESKeySpec$7;

    invoke-direct {v1, p0}, Lo/DESKeySpec$7;-><init>(Lo/DESKeySpec;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->n()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1014
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1018
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lo/DESKeySpec;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lo/DESKeySpec;->r:Z

    .line 270
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 362
    invoke-virtual {p0}, Lo/DESKeySpec;->k()Z

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    .line 472
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->l()F

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 740
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->isRunning()Z

    move-result v0

    return v0
.end method

.method public l()Lo/PSource;
    .locals 1

    .line 802
    iget-object v0, p0, Lo/DESKeySpec;->b:Lo/PSource;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 709
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 806
    iget-object v0, p0, Lo/DESKeySpec;->b:Lo/PSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    invoke-virtual {v0}, Lo/DESedeKeySpec;->j()Lo/TransformationMethod;

    move-result-object v0

    invoke-virtual {v0}, Lo/TransformationMethod;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()I
    .locals 1

    .line 731
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    .line 827
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 828
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->cancel()V

    return-void
.end method

.method public q()Lo/DESedeKeySpec;
    .locals 1

    .line 814
    iget-object v0, p0, Lo/DESKeySpec;->a:Lo/DESedeKeySpec;

    return-object v0
.end method

.method public r()F
    .locals 1

    .line 810
    iget v0, p0, Lo/DESKeySpec;->i:F

    return v0
.end method

.method public s()F
    .locals 1

    .line 838
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->c()F

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1023
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1027
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 278
    iput p1, p0, Lo/DESKeySpec;->q:I

    .line 279
    invoke-virtual {p0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    .line 289
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 351
    invoke-virtual {p0}, Lo/DESKeySpec;->d()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 357
    invoke-virtual {p0}, Lo/DESKeySpec;->a()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 832
    iget-object v0, p0, Lo/DESKeySpec;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 833
    iget-object v0, p0, Lo/DESKeySpec;->j:Lo/ActivityGroup;

    invoke-virtual {v0}, Lo/ActivityGroup;->o()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1032
    invoke-virtual {p0}, Lo/DESKeySpec;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1036
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
