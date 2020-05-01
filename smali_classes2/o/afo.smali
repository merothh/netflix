.class public Lo/afo;
.super Lo/JobSchedulerImpl;
.source ""


# instance fields
.field private final b:J

.field private final d:Lcom/android/volley/Request$Priority;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/FragmentManagerNonConfig$StateListAnimator;IILandroid/graphics/Bitmap$Config;Lo/FragmentManagerNonConfig$Activity;Lcom/android/volley/Request$Priority;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FragmentManagerNonConfig$StateListAnimator<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lo/FragmentManagerNonConfig$Activity;",
            "Lcom/android/volley/Request$Priority;",
            "IJ)V"
        }
    .end annotation

    .line 54
    invoke-direct/range {p0 .. p6}, Lo/JobSchedulerImpl;-><init>(Ljava/lang/String;Lo/FragmentManagerNonConfig$StateListAnimator;IILandroid/graphics/Bitmap$Config;Lo/FragmentManagerNonConfig$Activity;)V

    if-eqz p7, :cond_0

    .line 56
    iput-object p7, p0, Lo/afo;->d:Lcom/android/volley/Request$Priority;

    goto :goto_0

    .line 59
    :cond_0
    sget-object p1, Lcom/android/volley/Request$Priority;->b:Lcom/android/volley/Request$Priority;

    iput-object p1, p0, Lo/afo;->d:Lcom/android/volley/Request$Priority;

    :goto_0
    if-lez p8, :cond_1

    .line 62
    new-instance p1, Lo/ContentProviderHolder;

    const/4 p2, 0x2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-direct {p1, p8, p2, p3}, Lo/ContentProviderHolder;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lo/afo;->d(Lo/FragmentController;)V

    .line 64
    :cond_1
    iput-wide p9, p0, Lo/afo;->b:J

    return-void
.end method


# virtual methods
.method public D()Lcom/android/volley/Request$Priority;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/afo;->d:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExitTransitionCoordinator;",
            ")",
            "Lo/FragmentManagerNonConfig<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lo/JobSchedulerImpl;->e(Lo/ExitTransitionCoordinator;)Lo/FragmentManagerNonConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p1, Lo/FragmentManagerNonConfig;->a:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_1

    iget-object v0, p1, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/afo;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/afo;->b:J

    add-long/2addr v0, v2

    .line 94
    iget-object v2, p1, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    iget-wide v2, v2, Lo/ContextImpl$StateListAnimator;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 100
    iget-object v2, p1, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    iput-wide v0, v2, Lo/ContextImpl$StateListAnimator;->d:J

    .line 101
    iget-object v2, p1, Lo/FragmentManagerNonConfig;->d:Lo/ContextImpl$StateListAnimator;

    iput-wide v0, v2, Lo/ContextImpl$StateListAnimator;->c:J

    :cond_1
    :goto_0
    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lo/afo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/afu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
