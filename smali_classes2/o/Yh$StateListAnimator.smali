.class final Lo/Yh$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# static fields
.field private static final a:F

.field private static final b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/Yh$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 249
    new-instance v0, Lo/Yh$StateListAnimator;

    invoke-direct {v0}, Lo/Yh$StateListAnimator;-><init>()V

    sput-object v0, Lo/Yh$StateListAnimator;->e:Lo/Yh$StateListAnimator;

    .line 254
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance().resources"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    sput v0, Lo/Yh$StateListAnimator;->a:F

    .line 256
    new-instance v0, Lo/Yh$StateListAnimator$Activity;

    invoke-direct {v0}, Lo/Yh$StateListAnimator$Activity;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    sput-object v0, Lo/Yh$StateListAnimator;->b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    .line 271
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/Yh$StateListAnimator;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 297
    sget-object v0, Lo/Yh$StateListAnimator;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    const-string v0, "sScrollingRecyclerViews[\u2026                   return"

    .line 298
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    sget v1, Lo/Yh$StateListAnimator;->a:F

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 300
    iget p2, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    int-to-float p3, p3

    sget v0, Lo/Yh$StateListAnimator;->a:F

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 274
    sget-object v0, Lo/Yh$StateListAnimator;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 277
    sget-object v1, Lo/Yh$StateListAnimator;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lo/Yh$StateListAnimator;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private final e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 282
    sget-object v0, Lo/Yh$StateListAnimator;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    const-string v1, "sScrollingRecyclerViews.\u2026e(recyclerView) ?: return"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x0

    .line 292
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 293
    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lo/Yh$StateListAnimator;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic e(Lo/Yh$StateListAnimator;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lo/Yh$StateListAnimator;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method


# virtual methods
.method public final d()Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;
    .locals 1

    .line 256
    sget-object v0, Lo/Yh$StateListAnimator;->b:Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    return-object v0
.end method
