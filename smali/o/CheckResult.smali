.class public abstract Lo/CheckResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RC2ParameterSpec;
.implements Lo/AccountManagerInternal$ActionBar;
.implements Lo/Keyframe;


# instance fields
.field private final a:Landroid/graphics/Path;

.field final b:Lo/DESKeySpec;

.field final c:Landroid/graphics/Matrix;

.field final d:Lo/AnimatorSet;

.field final e:Lcom/airbnb/lottie/model/layer/Layer;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/Paint;

.field private p:Lo/CheckResult;

.field private q:Lo/ChooseTypeAndAccountActivity;

.field private r:Lo/CheckResult;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/lang/String;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AccountManagerInternal<",
            "**>;>;"
        }
    .end annotation
.end field

.field private v:Z


# direct methods
.method constructor <init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    .line 69
    new-instance v0, Lo/PBEKeySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/PBEKeySpec;-><init>(I)V

    iput-object v0, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Lo/PBEKeySpec;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lo/PBEKeySpec;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lo/CheckResult;->g:Landroid/graphics/Paint;

    .line 71
    new-instance v0, Lo/PBEKeySpec;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Lo/PBEKeySpec;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Lo/PBEKeySpec;

    invoke-direct {v0, v1}, Lo/PBEKeySpec;-><init>(I)V

    iput-object v0, p0, Lo/CheckResult;->i:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Lo/PBEKeySpec;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Lo/PBEKeySpec;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lo/CheckResult;->o:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->n:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->c:Landroid/graphics/Matrix;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->u:Ljava/util/List;

    .line 96
    iput-boolean v1, p0, Lo/CheckResult;->v:Z

    .line 99
    iput-object p1, p0, Lo/CheckResult;->b:Lo/DESKeySpec;

    .line 100
    iput-object p2, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#draw"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CheckResult;->t:Ljava/lang/String;

    .line 102
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object p1

    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->b:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lo/CheckResult;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lo/CheckResult;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->o()Lo/TypeConverter;

    move-result-object p1

    invoke-virtual {p1}, Lo/TypeConverter;->f()Lo/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    .line 109
    iget-object p1, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {p1, p0}, Lo/AnimatorSet;->e(Lo/AccountManagerInternal$ActionBar;)V

    .line 111
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    new-instance p1, Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lo/ChooseTypeAndAccountActivity;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    .line 113
    iget-object p1, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {p1}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AccountManagerInternal;

    .line 116
    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object p1, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {p1}, Lo/ChooseTypeAndAccountActivity;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/AccountManagerInternal;

    .line 119
    invoke-virtual {p0, p2}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    .line 120
    invoke-virtual {p2, p0}, Lo/AccountManagerInternal;->d(Lo/AccountManagerInternal$ActionBar;)V

    goto :goto_2

    .line 123
    :cond_2
    invoke-direct {p0}, Lo/CheckResult;->j()V

    return-void
.end method

.method static a(Lcom/airbnb/lottie/model/layer/Layer;Lo/DESKeySpec;Lo/DESedeKeySpec;)Lo/CheckResult;
    .locals 2

    .line 45
    sget-object v0, Lo/CheckResult$3;->a:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->l()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->l()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 58
    :pswitch_0
    new-instance p2, Lo/CurrentTimeMillisLong;

    invoke-direct {p2, p1, p0}, Lo/CurrentTimeMillisLong;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p2

    .line 56
    :pswitch_1
    new-instance p2, Lo/CallbackExecutor;

    invoke-direct {p2, p1, p0}, Lo/CallbackExecutor;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p2

    .line 54
    :pswitch_2
    new-instance p2, Lo/ColorLong;

    invoke-direct {p2, p1, p0}, Lo/ColorLong;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p2

    .line 52
    :pswitch_3
    new-instance p2, Lo/Dimension;

    invoke-direct {p2, p1, p0}, Lo/Dimension;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p2

    .line 49
    :pswitch_4
    new-instance v0, Lo/ColorRes;

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/DESedeKeySpec;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lo/ColorRes;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lo/DESedeKeySpec;)V

    return-object v0

    .line 47
    :pswitch_5
    new-instance p2, Lo/ColorInt;

    invoke-direct {p2, p1, p0}, Lo/ColorInt;-><init>(Lo/DESKeySpec;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 424
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 425
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 426
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 427
    iget-object p2, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 428
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(F)V
    .locals 2

    .line 298
    iget-object v0, p0, Lo/CheckResult;->b:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->q()Lo/DESedeKeySpec;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lo/DESedeKeySpec;->e()Lo/OAEPParameterSpec;

    move-result-object v0

    iget-object v1, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/OAEPParameterSpec;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 446
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 447
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 448
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 359
    invoke-virtual {p0}, Lo/CheckResult;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->n()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->b:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_1

    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lo/CheckResult;->n:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 370
    iget-object v0, p0, Lo/CheckResult;->r:Lo/CheckResult;

    iget-object v2, p0, Lo/CheckResult;->n:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 371
    iget-object p2, p0, Lo/CheckResult;->n:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 373
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "Layer#clearLayer"

    .line 304
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lo/CheckResult;->o:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 433
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 434
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 435
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 436
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 437
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 438
    iget-object p2, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 439
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    .line 311
    iget-object v0, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    invoke-virtual {p0}, Lo/CheckResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 318
    iget-object v4, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v4}, Lo/ChooseTypeAndAccountActivity;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    .line 319
    iget-object v5, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v5}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/AccountManagerInternal;

    .line 320
    invoke-virtual {v5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    .line 321
    iget-object v6, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 322
    iget-object v5, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 324
    sget-object v5, Lo/CheckResult$3;->b:[I

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->d()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 335
    :cond_2
    :goto_1
    iget-object v4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object v5, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_3

    .line 340
    iget-object v4, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    iget-object v5, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 342
    :cond_3
    iget-object v4, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    .line 343
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 344
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    .line 345
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lo/CheckResult;->m:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    .line 346
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 342
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    .line 352
    :cond_5
    iget-object p2, p0, Lo/CheckResult;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 354
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_6
    return-void
.end method

.method static synthetic c(Lo/CheckResult;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/CheckResult;->e(Z)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 465
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 466
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 467
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 468
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 469
    iget-object p2, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 470
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    if-eqz p4, :cond_0

    const/16 p4, 0x1f

    goto :goto_0

    :cond_0
    const/16 p4, 0x13

    .line 174
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    :goto_1
    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 10

    const-string v0, "Layer#saveLayer"

    .line 380
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/CheckResult;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 382
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 383
    :goto_0
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 384
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/airbnb/lottie/model/content/Mask;

    .line 385
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lo/AccountManagerInternal;

    .line 386
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lo/AccountManagerInternal;

    .line 387
    sget-object v0, Lo/CheckResult$3;->b:[I

    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->d()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 389
    :cond_0
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 390
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    goto :goto_1

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 392
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 410
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    goto :goto_1

    :cond_3
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 412
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    .line 398
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    .line 399
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 402
    :cond_5
    invoke-virtual {v7}, Lcom/airbnb/lottie/model/content/Mask;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 403
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    goto :goto_1

    :cond_6
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 405
    invoke-direct/range {v4 .. v9}, Lo/CheckResult;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p2, "Layer#restoreLayer"

    .line 417
    invoke-static {p2}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    invoke-static {p2}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 453
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 454
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 455
    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float p5, p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 457
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 458
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 459
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 491
    iget-boolean v0, p0, Lo/CheckResult;->v:Z

    if-eq p1, v0, :cond_0

    .line 492
    iput-boolean p1, p0, Lo/CheckResult;->v:Z

    .line 493
    invoke-direct {p0}, Lo/CheckResult;->i()V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/content/Mask;Lo/AccountManagerInternal;Lo/AccountManagerInternal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Lcom/airbnb/lottie/model/content/Mask;",
            "Lo/AccountManagerInternal<",
            "Lo/BoolRes;",
            "Landroid/graphics/Path;",
            ">;",
            "Lo/AccountManagerInternal<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 476
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p3, v0, v1}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 477
    iget-object p3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v0, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 478
    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    int-to-float p5, p5

    const v0, 0x40233333    # 2.55f

    mul-float p5, p5, v0

    float-to-int p5, p5

    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 479
    invoke-virtual {p4}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    .line 480
    iget-object p4, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 481
    iget-object p3, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 482
    iget-object p2, p0, Lo/CheckResult;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lo/CheckResult;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 519
    iget-object v0, p0, Lo/CheckResult;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lo/CheckResult;->p:Lo/CheckResult;

    if-nez v0, :cond_1

    .line 523
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/CheckResult;->s:Ljava/util/List;

    return-void

    .line 527
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CheckResult;->s:Ljava/util/List;

    .line 528
    iget-object v0, p0, Lo/CheckResult;->p:Lo/CheckResult;

    :goto_0
    if-eqz v0, :cond_2

    .line 530
    iget-object v1, p0, Lo/CheckResult;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, v0, Lo/CheckResult;->p:Lo/CheckResult;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private i()V
    .locals 1

    .line 166
    iget-object v0, p0, Lo/CheckResult;->b:Lo/DESKeySpec;

    invoke-virtual {v0}, Lo/DESKeySpec;->invalidateSelf()V

    return-void
.end method

.method private j()V
    .locals 4

    .line 148
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lo/ChooseAccountActivity;

    iget-object v2, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    .line 150
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/ChooseAccountActivity;-><init>(Ljava/util/List;)V

    .line 151
    invoke-virtual {v0}, Lo/ChooseAccountActivity;->c()V

    .line 152
    new-instance v2, Lo/CheckResult$2;

    invoke-direct {v2, p0, v0}, Lo/CheckResult$2;-><init>(Lo/CheckResult;Lo/ChooseAccountActivity;)V

    invoke-virtual {v0, v2}, Lo/ChooseAccountActivity;->d(Lo/AccountManagerInternal$ActionBar;)V

    .line 158
    invoke-virtual {v0}, Lo/ChooseAccountActivity;->j()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lo/CheckResult;->e(Z)V

    .line 159
    invoke-virtual {p0, v0}, Lo/CheckResult;->d(Lo/AccountManagerInternal;)V

    goto :goto_1

    .line 161
    :cond_1
    invoke-direct {p0, v1}, Lo/CheckResult;->e(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method a(Lo/CheckResult;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/CheckResult;->p:Lo/CheckResult;

    return-void
.end method

.method a()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;",
            "Ljava/util/List<",
            "Lo/AccessibilityButtonController;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            "I",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;",
            "Lo/IntKeyframeSet;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 537
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 195
    iget-object p1, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 196
    invoke-direct {p0}, Lo/CheckResult;->h()V

    .line 197
    iget-object p1, p0, Lo/CheckResult;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    .line 200
    iget-object p1, p0, Lo/CheckResult;->s:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 202
    iget-object p2, p0, Lo/CheckResult;->c:Landroid/graphics/Matrix;

    iget-object p3, p0, Lo/CheckResult;->s:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/CheckResult;

    iget-object p3, p3, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {p3}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lo/CheckResult;->p:Lo/CheckResult;

    if-eqz p1, :cond_1

    .line 205
    iget-object p2, p0, Lo/CheckResult;->c:Landroid/graphics/Matrix;

    iget-object p1, p1, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {p1}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 209
    :cond_1
    iget-object p1, p0, Lo/CheckResult;->c:Landroid/graphics/Matrix;

    iget-object p2, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {p2}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public c(Ljava/lang/Object;Lo/AlarmManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/AlarmManager<",
            "TT;>;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Lo/AnimatorSet;->a(Ljava/lang/Object;Lo/AlarmManager;)Z

    return-void
.end method

.method c(Lo/CheckResult;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/CheckResult;->r:Lo/CheckResult;

    return-void
.end method

.method abstract d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public d(Lo/AccountManagerInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AccountManagerInternal<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lo/CheckResult;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/IntKeyframeSet;",
            "I",
            "Ljava/util/List<",
            "Lo/IntKeyframeSet;",
            ">;",
            "Lo/IntKeyframeSet;",
            ")V"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->b(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/IntKeyframeSet;->e(Ljava/lang/String;)Lo/IntKeyframeSet;

    move-result-object p4

    .line 555
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p4, p0}, Lo/IntKeyframeSet;->e(Lo/Keyframe;)Lo/IntKeyframeSet;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p0}, Lo/CheckResult;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lo/IntKeyframeSet;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    .line 562
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/CheckResult;->b(Lo/IntKeyframeSet;ILjava/util/List;Lo/IntKeyframeSet;)V

    :cond_2
    return-void
.end method

.method d()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lo/CheckResult;->r:Lo/CheckResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lo/CheckResult;->i()V

    return-void
.end method

.method e(F)V
    .locals 3

    .line 499
    iget-object v0, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v0, p1}, Lo/AnimatorSet;->a(F)V

    .line 500
    iget-object v0, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 501
    :goto_0
    iget-object v2, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v2}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 502
    iget-object v2, p0, Lo/CheckResult;->q:Lo/ChooseTypeAndAccountActivity;

    invoke-virtual {v2}, Lo/ChooseTypeAndAccountActivity;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AccountManagerInternal;

    invoke-virtual {v2, p1}, Lo/AccountManagerInternal;->c(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()F

    move-result v0

    div-float/2addr p1, v0

    .line 508
    :cond_1
    iget-object v0, p0, Lo/CheckResult;->r:Lo/CheckResult;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, v0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->c()F

    move-result v0

    .line 511
    iget-object v2, p0, Lo/CheckResult;->r:Lo/CheckResult;

    mul-float v0, v0, p1

    invoke-virtual {v2, v0}, Lo/CheckResult;->e(F)V

    .line 513
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/CheckResult;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 514
    iget-object v0, p0, Lo/CheckResult;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AccountManagerInternal;

    invoke-virtual {v0, p1}, Lo/AccountManagerInternal;->c(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 8

    .line 214
    iget-object v0, p0, Lo/CheckResult;->t:Ljava/lang/String;

    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lo/CheckResult;->v:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lo/CheckResult;->e:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 219
    :cond_0
    invoke-direct {p0}, Lo/CheckResult;->h()V

    const-string v0, "Layer#parentMatrix"

    .line 220
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 222
    iget-object v1, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 223
    iget-object v1, p0, Lo/CheckResult;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 224
    iget-object v3, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    iget-object v4, p0, Lo/CheckResult;->s:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/CheckResult;

    iget-object v4, v4, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v4}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 227
    iget-object v0, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v0}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v0}, Lo/AnimatorSet;->e()Lo/AccountManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lo/AccountManagerInternal;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float p3, p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    .line 230
    invoke-virtual {p0}, Lo/CheckResult;->d()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lo/CheckResult;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget-object p2, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    iget-object v0, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v0}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 232
    invoke-static {v1}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 234
    invoke-static {v1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 235
    iget-object p1, p0, Lo/CheckResult;->t:Ljava/lang/String;

    invoke-static {p1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lo/CheckResult;->b(F)V

    return-void

    :cond_3
    const-string v0, "Layer#computeBounds"

    .line 239
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 249
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    invoke-direct {p0, v3, p2}, Lo/CheckResult;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 251
    iget-object v3, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    iget-object v4, p0, Lo/CheckResult;->d:Lo/AnimatorSet;

    invoke-virtual {v4}, Lo/AnimatorSet;->d()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 252
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-direct {p0, v3, v4}, Lo/CheckResult;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 254
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v4, v6}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v3

    if-nez v3, :cond_4

    .line 255
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    :cond_4
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 260
    iget-object v0, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Layer#saveLayer"

    .line 261
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/CheckResult;->h:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v3, v4, v2}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 263
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 266
    invoke-direct {p0, p1}, Lo/CheckResult;->c(Landroid/graphics/Canvas;)V

    .line 267
    invoke-static {v1}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v2, p3}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 269
    invoke-static {v1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 271
    invoke-virtual {p0}, Lo/CheckResult;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    iget-object v1, p0, Lo/CheckResult;->j:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lo/CheckResult;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 275
    :cond_5
    invoke-virtual {p0}, Lo/CheckResult;->d()Z

    move-result v1

    const-string v2, "Layer#restoreLayer"

    if-eqz v1, :cond_6

    const-string v1, "Layer#drawMatte"

    .line 276
    invoke-static {v1}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lo/CheckResult;->k:Landroid/graphics/RectF;

    iget-object v4, p0, Lo/CheckResult;->i:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v3, v4, v5}, Lo/CheckResult;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;Z)V

    .line 279
    invoke-static {v0}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 280
    invoke-direct {p0, p1}, Lo/CheckResult;->c(Landroid/graphics/Canvas;)V

    .line 282
    iget-object v0, p0, Lo/CheckResult;->r:Lo/CheckResult;

    invoke-virtual {v0, p1, p2, p3}, Lo/CheckResult;->e(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 283
    invoke-static {v2}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 285
    invoke-static {v2}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 286
    invoke-static {v1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 289
    :cond_6
    invoke-static {v2}, Lo/SecretKeyFactory;->d(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    invoke-static {v2}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    .line 294
    :cond_7
    iget-object p1, p0, Lo/CheckResult;->t:Ljava/lang/String;

    invoke-static {p1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lo/CheckResult;->b(F)V

    return-void

    .line 216
    :cond_8
    :goto_2
    iget-object p1, p0, Lo/CheckResult;->t:Ljava/lang/String;

    invoke-static {p1}, Lo/SecretKeyFactory;->b(Ljava/lang/String;)F

    return-void
.end method

.method public e(Lo/AccountManagerInternal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AccountManagerInternal<",
            "**>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lo/CheckResult;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
