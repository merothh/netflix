.class public abstract Lo/ChildZygoteProcess;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ChildZygoteProcess$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/CommonClock;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lo/ChildZygoteProcess$StateListAnimator;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:[F

.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private final j:[F

.field private final k:[F

.field private final l:[F

.field private final m:[F

.field private final n:Lo/aeA;

.field private final o:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ChildZygoteProcess$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ChildZygoteProcess$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ChildZygoteProcess;->c:Lo/ChildZygoteProcess$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/ChildZygoteProcess;->o:Landroid/view/View;

    .line 27
    sget-object p1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 142
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 30
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v2, Lo/CancellationSignal$TaskDescription;->p:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 31
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v3, Lo/CancellationSignal$TaskDescription;->s:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 29
    iput-object v0, p0, Lo/ChildZygoteProcess;->b:[F

    new-array v0, p1, [F

    .line 35
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->l:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    .line 36
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->k:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    .line 34
    iput-object v0, p0, Lo/ChildZygoteProcess;->d:[F

    new-array v0, p1, [F

    .line 39
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    const-string v4, "resources"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/CancellationSignal$TaskDescription;->t:I

    invoke-static {v1, v5}, Lo/CommonTimeConfig;->b(Landroid/content/res/Resources;I)F

    move-result v1

    aput v1, v0, v2

    .line 40
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/CancellationSignal$TaskDescription;->r:I

    invoke-static {v1, v5}, Lo/CommonTimeConfig;->b(Landroid/content/res/Resources;I)F

    move-result v1

    aput v1, v0, v3

    .line 38
    iput-object v0, p0, Lo/ChildZygoteProcess;->e:[F

    new-array v0, p1, [F

    .line 43
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/CancellationSignal$TaskDescription;->o:I

    invoke-static {v1, v5}, Lo/CommonTimeConfig;->b(Landroid/content/res/Resources;I)F

    move-result v1

    aput v1, v0, v2

    .line 44
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/CancellationSignal$TaskDescription;->q:I

    invoke-static {v1, v4}, Lo/CommonTimeConfig;->b(Landroid/content/res/Resources;I)F

    move-result v1

    aput v1, v0, v3

    .line 42
    iput-object v0, p0, Lo/ChildZygoteProcess;->h:[F

    new-array v0, p1, [F

    .line 46
    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/ChildZygoteProcess;->j:[F

    new-array v0, p1, [F

    .line 47
    fill-array-data v0, :array_1

    iput-object v0, p0, Lo/ChildZygoteProcess;->f:[F

    new-array v0, p1, [F

    .line 48
    fill-array-data v0, :array_2

    iput-object v0, p0, Lo/ChildZygoteProcess;->i:[F

    new-array v0, p1, [F

    .line 49
    fill-array-data v0, :array_3

    iput-object v0, p0, Lo/ChildZygoteProcess;->g:[F

    new-array v0, p1, [F

    .line 51
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->j:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    .line 52
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->i:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    .line 50
    iput-object v0, p0, Lo/ChildZygoteProcess;->k:[F

    new-array v0, p1, [F

    .line 55
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->e:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    .line 56
    iget-object v1, p0, Lo/ChildZygoteProcess;->a:Landroid/content/res/Resources;

    sget v4, Lo/CancellationSignal$TaskDescription;->c:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    .line 54
    iput-object v0, p0, Lo/ChildZygoteProcess;->m:[F

    new-array p1, p1, [F

    const/16 v0, 0xc8

    int-to-float v0, v0

    .line 143
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 144
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "Lookup.get<Context>().resources"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 143
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    aput v0, p1, v2

    const/4 v0, 0x0

    aput v0, p1, v3

    .line 58
    iput-object p1, p0, Lo/ChildZygoteProcess;->l:[F

    .line 60
    new-instance p1, Lo/aeA;

    invoke-direct {p1}, Lo/aeA;-><init>()V

    iput-object p1, p0, Lo/ChildZygoteProcess;->n:Lo/aeA;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected final a([FF)F
    .locals 3

    const-string v0, "values"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    aget p1, p1, v0

    sub-float/2addr v2, p1

    mul-float p2, p2, v2

    add-float/2addr v1, p2

    return v1
.end method

.method protected final b([FF)F
    .locals 3

    const-string v0, "values"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    aget v1, p1, v0

    mul-float v2, p2, p2

    mul-float v2, v2, p2

    mul-float v2, v2, p2

    const/4 p2, 0x1

    aget p2, p1, p2

    aget p1, p1, v0

    sub-float/2addr p2, p1

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    return v1
.end method

.method protected final c([FF)F
    .locals 3

    const-string v0, "values"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    aget v1, p1, v0

    mul-float v2, p2, p2

    mul-float v2, v2, p2

    const/4 p2, 0x1

    aget p2, p1, p2

    aget p1, p1, v0

    sub-float/2addr p2, p1

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    return v1
.end method

.method protected final varargs d(F[Landroid/view/View;)V
    .locals 3

    const-string v0, "views"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    mul-float p1, p1, v0

    sub-float/2addr v1, p1

    goto :goto_0

    :cond_0
    const v1, 0x3f666666    # 0.9f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    sub-float/2addr p1, v1

    int-to-float v0, v0

    mul-float v1, p1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 140
    :goto_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object v2, p2, v0

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected final d_()[F
    .locals 1

    .line 33
    iget-object v0, p0, Lo/ChildZygoteProcess;->d:[F

    return-object v0
.end method

.method protected final e_()[F
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ChildZygoteProcess;->h:[F

    return-object v0
.end method

.method protected final f()[F
    .locals 1

    .line 38
    iget-object v0, p0, Lo/ChildZygoteProcess;->e:[F

    return-object v0
.end method

.method protected final i()[F
    .locals 1

    .line 29
    iget-object v0, p0, Lo/ChildZygoteProcess;->b:[F

    return-object v0
.end method

.method protected final k()[F
    .locals 1

    .line 50
    iget-object v0, p0, Lo/ChildZygoteProcess;->k:[F

    return-object v0
.end method

.method protected final l()[F
    .locals 1

    .line 48
    iget-object v0, p0, Lo/ChildZygoteProcess;->i:[F

    return-object v0
.end method

.method protected final m()[F
    .locals 1

    .line 46
    iget-object v0, p0, Lo/ChildZygoteProcess;->j:[F

    return-object v0
.end method

.method protected final n()[F
    .locals 1

    .line 49
    iget-object v0, p0, Lo/ChildZygoteProcess;->g:[F

    return-object v0
.end method

.method protected final o()[F
    .locals 1

    .line 47
    iget-object v0, p0, Lo/ChildZygoteProcess;->f:[F

    return-object v0
.end method

.method public final p()Landroid/view/View;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/ChildZygoteProcess;->o:Landroid/view/View;

    return-object v0
.end method

.method protected final q()[F
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ChildZygoteProcess;->m:[F

    return-object v0
.end method

.method protected final r()[F
    .locals 1

    .line 58
    iget-object v0, p0, Lo/ChildZygoteProcess;->l:[F

    return-object v0
.end method

.method protected final s()Lo/aeA;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/ChildZygoteProcess;->n:Lo/aeA;

    return-object v0
.end method
