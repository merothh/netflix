.class public Lo/ImageButton;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ImageButton$Activity;,
        Lo/ImageButton$TaskDescription;
    }
.end annotation


# static fields
.field public static final a:Lo/ImageButton$TaskDescription;


# instance fields
.field private final b:[I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/WebStorage;

.field private final e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;

.field private g:F

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Landroid/animation/AnimatorListenerAdapter;

.field private final l:Lo/DataOutput;

.field private m:F

.field private n:Lo/WebSyncManager;

.field private o:Z

.field private p:Z

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ImageButton$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ImageButton$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/ImageButton;->e:Landroid/graphics/Paint;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 185
    iput-object p2, p0, Lo/ImageButton;->b:[I

    .line 187
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/ImageButton;->c:Ljava/util/List;

    .line 188
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lo/ImageButton;->i:Ljava/util/List;

    .line 189
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/ImageButton;->f:Landroid/graphics/Rect;

    .line 213
    iget-object p2, p0, Lo/ImageButton;->e:Landroid/graphics/Paint;

    const p3, -0xff0100

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object p2, p0, Lo/ImageButton;->e:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 215
    iget-object p2, p0, Lo/ImageButton;->e:Landroid/graphics/Paint;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    new-instance p2, Lo/DataOutput;

    new-instance p3, Lo/ImageButton$Activity;

    invoke-direct {p3, p0}, Lo/ImageButton$Activity;-><init>(Lo/ImageButton;)V

    check-cast p3, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, p3}, Lo/DataOutput;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lo/ImageButton;->l:Lo/DataOutput;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 117
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(II)V
    .locals 1

    .line 329
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 330
    invoke-virtual {p0, p1, p2}, Lo/ImageButton;->setMinAndMaxFrame(II)V

    .line 331
    invoke-virtual {p0}, Lo/ImageButton;->d()V

    return-void
.end method

.method private final a(Lo/WebResourceError;I)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 296
    iget-object v0, p0, Lo/ImageButton;->k:Landroid/animation/AnimatorListenerAdapter;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lo/ImageButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual {p0}, Lo/ImageButton;->b()F

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->d:F

    .line 298
    new-instance v1, Lo/ImageButton$StateListAnimator;

    invoke-direct {v1, p0, v0, p1}, Lo/ImageButton$StateListAnimator;-><init>(Lo/ImageButton;Lkotlin/jvm/internal/Ref$FloatRef;Lo/WebResourceError;)V

    check-cast v1, Landroid/animation/AnimatorListenerAdapter;

    iput-object v1, p0, Lo/ImageButton;->k:Landroid/animation/AnimatorListenerAdapter;

    .line 312
    iget-object v0, p0, Lo/ImageButton;->k:Landroid/animation/AnimatorListenerAdapter;

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lo/ImageButton;->c(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 313
    invoke-virtual {p1}, Lo/WebResourceError;->d()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/WebResourceError;->d()I

    move-result p2

    .line 314
    :goto_0
    invoke-virtual {p1}, Lo/WebResourceError;->c()I

    move-result v0

    if-le p2, v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    .line 315
    invoke-virtual {p0, v0}, Lo/ImageButton;->setSpeed(F)V

    .line 318
    invoke-virtual {p1}, Lo/WebResourceError;->c()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/ImageButton;->a(II)V

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {p1}, Lo/WebResourceError;->c()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lo/ImageButton;->a(II)V

    .line 322
    :goto_1
    iget-object p2, p0, Lo/ImageButton;->n:Lo/WebSyncManager;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lo/WebResourceError;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/WebSyncManager;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 272
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/ImageButton;->c(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: playAnimationByTag"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final c(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 247
    iget-object v0, p0, Lo/ImageButton;->b:[I

    invoke-virtual {p0, v0}, Lo/ImageButton;->getLocationOnScreen([I)V

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lo/ImageButton;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lo/ImageButton;->b:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lo/ImageButton;->e(FF)Lo/WebResourceError;

    move-result-object p1

    .line 249
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 250
    invoke-static {p0, p1, v2, v0, v1}, Lo/ImageButton;->e(Lo/ImageButton;Lo/WebResourceError;IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic d(Lo/ImageButton;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 357
    invoke-virtual {p0}, Lo/ImageButton;->i()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lo/ImageButton;->e(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getListOfValidTapItemsByFrame"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e(FF)Lo/WebResourceError;
    .locals 5

    .line 335
    iget-object v0, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebResourceError;

    .line 336
    invoke-virtual {v1}, Lo/WebResourceError;->e()I

    move-result v2

    invoke-virtual {p0}, Lo/ImageButton;->i()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 337
    invoke-virtual {v1}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic e(Lo/ImageButton;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lo/ImageButton;->c(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lo/ImageButton;Lo/WebResourceError;IILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 294
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/ImageButton;->a(Lo/WebResourceError;I)Z

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: playAnimationFromTagItem"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lo/WebResourceError;
    .locals 7

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 347
    iget-object v0, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebResourceError;

    .line 348
    invoke-virtual {v1}, Lo/WebResourceError;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    sget-object p1, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    return-object v1

    .line 353
    :cond_1
    sget-object p1, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    return-object v2
.end method

.method public final a(Ljava/lang/String;Lcom/netflix/mediaclient/android/lottie/FrameType;)Z
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "frameType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lo/ImageButton;->a(Ljava/lang/String;)Lo/WebResourceError;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 279
    sget-object v1, Lo/HeterogeneousExpandableList;->e:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/lottie/FrameType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 283
    invoke-virtual {p1}, Lo/WebResourceError;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 282
    :cond_1
    invoke-virtual {p1}, Lo/WebResourceError;->e()I

    move-result p1

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p1}, Lo/WebResourceError;->c()I

    move-result p1

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p1}, Lo/WebResourceError;->d()I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 286
    iget p2, p0, Lo/ImageButton;->t:I

    invoke-virtual {p0, v0, p2}, Lo/ImageButton;->setMinAndMaxFrame(II)V

    .line 287
    invoke-virtual {p0, p1}, Lo/ImageButton;->setFrame(I)V

    return v1

    :cond_4
    return v0
.end method

.method public final c(FF)Lo/WebResourceError;
    .locals 2

    .line 268
    iget-object v0, p0, Lo/ImageButton;->b:[I

    invoke-virtual {p0, v0}, Lo/ImageButton;->getLocationOnScreen([I)V

    .line 269
    iget-object v0, p0, Lo/ImageButton;->b:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Lo/ImageButton;->e(FF)Lo/WebResourceError;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1}, Lo/ImageButton;->a(Ljava/lang/String;)Lo/WebResourceError;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/ImageButton;->a(Lo/WebResourceError;I)Z

    move-result p1

    return p1
.end method

.method public final d(Landroid/view/MotionEvent;)Lo/WebResourceError;
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lo/ImageButton;->b:[I

    invoke-virtual {p0, v0}, Lo/ImageButton;->getLocationOnScreen([I)V

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lo/ImageButton;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lo/ImageButton;->b:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lo/ImageButton;->e(FF)Lo/WebResourceError;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lo/WebResourceError;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lo/ImageButton;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 412
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/WebResourceError;

    .line 358
    invoke-virtual {v3}, Lo/WebResourceError;->e()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 358
    invoke-static {v1}, Lo/akz;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0, p1}, Lo/ImageButton;->d(Landroid/view/MotionEvent;)Lo/WebResourceError;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()I
    .locals 1

    .line 208
    iget v0, p0, Lo/ImageButton;->t:I

    return v0
.end method

.method public final h()Lo/WebSyncManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lo/ImageButton;->n:Lo/WebSyncManager;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 362
    iget-object v0, p0, Lo/ImageButton;->k:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 363
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lo/ImageButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/airbnb/lottie/LottieAnimationView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 220
    invoke-super {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-virtual {p0}, Lo/ImageButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lo/ImageButton;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 223
    invoke-virtual {p0}, Lo/ImageButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lo/ImageButton;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 226
    iget v2, p0, Lo/ImageButton;->g:F

    cmpg-float v2, v2, v0

    if-nez v2, :cond_0

    iget v2, p0, Lo/ImageButton;->m:F

    cmpg-float v2, v2, v1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lo/ImageButton;->p:Z

    if-eqz v2, :cond_3

    .line 227
    :cond_0
    iput v0, p0, Lo/ImageButton;->g:F

    .line 228
    iput v1, p0, Lo/ImageButton;->m:F

    .line 229
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 230
    iget-object v0, p0, Lo/ImageButton;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    check-cast v3, Lo/WebResourceError;

    .line 231
    iget-object v5, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/WebResourceError;

    invoke-virtual {v5}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p0, Lo/ImageButton;->g:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 232
    iget-object v5, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/WebResourceError;

    invoke-virtual {v5}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p0, Lo/ImageButton;->g:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 233
    iget-object v5, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/WebResourceError;

    invoke-virtual {v5}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lo/ImageButton;->m:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 234
    iget-object v5, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/WebResourceError;

    invoke-virtual {v2}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v5, p0, Lo/ImageButton;->m:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move v2, v4

    goto :goto_0

    .line 236
    :cond_2
    iput-boolean v1, p0, Lo/ImageButton;->p:Z

    .line 239
    :cond_3
    iget-boolean v0, p0, Lo/ImageButton;->o:Z

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lo/ImageButton;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebResourceError;

    if-eqz p1, :cond_4

    .line 241
    invoke-virtual {v1}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lo/ImageButton;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lo/ImageButton;->l:Lo/DataOutput;

    invoke-virtual {v0, p1}, Lo/DataOutput;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setNetflixLottieComposition(Landroid/content/Context;Lo/WebStorage;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ImageButton;->setComposition(Lo/DESedeKeySpec;)V

    .line 161
    invoke-virtual {p2}, Lo/WebStorage;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 371
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/WebResourceError;

    .line 162
    invoke-virtual {v1}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v11, p0, Lo/ImageButton;->c:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v9, 0x1f

    const/4 v10, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lo/WebResourceError;->d(Lo/WebResourceError;Ljava/lang/String;IIIILandroid/graphics/Rect;ILjava/lang/Object;)Lo/WebResourceError;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v11, p0, Lo/ImageButton;->i:Ljava/util/List;

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lo/WebResourceError;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v1

    invoke-static/range {v2 .. v10}, Lo/WebResourceError;->d(Lo/WebResourceError;Ljava/lang/String;IIIILandroid/graphics/Rect;ILjava/lang/Object;)Lo/WebResourceError;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "sceneModel.composition.bounds"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/ImageButton;->f:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {p2}, Lo/WebStorage;->b()I

    move-result v0

    iput v0, p0, Lo/ImageButton;->h:I

    .line 169
    invoke-virtual {p2}, Lo/WebStorage;->c()I

    move-result v0

    iput v0, p0, Lo/ImageButton;->j:I

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 171
    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/DESedeKeySpec;->n()F

    move-result v1

    mul-float v1, v1, v0

    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->a()F

    move-result v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lo/ImageButton;->s:I

    .line 172
    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->g()F

    move-result v0

    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v1

    invoke-virtual {v1}, Lo/DESedeKeySpec;->f()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ImageButton;->t:I

    .line 173
    sget-object v0, Lo/ImageButton;->a:Lo/ImageButton$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 177
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 179
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p2}, Lo/WebStorage;->d()Lo/DESedeKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Lo/DESedeKeySpec;->d()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lo/ImageButton;->setScale(F)V

    .line 181
    iput-object p2, p0, Lo/ImageButton;->d:Lo/WebStorage;

    return-void

    .line 178
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setResetViewScaleFactor(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lo/ImageButton;->p:Z

    return-void
.end method

.method public final setShowTapAreaBorder(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lo/ImageButton;->o:Z

    return-void
.end method

.method public final setTagAnimationListener(Lo/WebSyncManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lo/ImageButton;->n:Lo/WebSyncManager;

    return-void
.end method

.method public final setTargetFps(I)V
    .locals 0

    .line 209
    iput p1, p0, Lo/ImageButton;->s:I

    return-void
.end method

.method public final setTotalNumFrames(I)V
    .locals 0

    .line 208
    iput p1, p0, Lo/ImageButton;->t:I

    return-void
.end method
