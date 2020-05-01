.class Lo/ContentResolver$TaskDescription;
.super Lo/Intent$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field b:Lo/TransformationMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TransformationMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/ContentResolver$TaskDescription;Lo/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lo/Intent$Application;-><init>(Lo/Intent$Application;Lo/Intent;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 636
    iget-object p2, p1, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    iput-object p2, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    .line 637
    iget-object p1, p1, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    iput-object p1, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    goto :goto_0

    .line 639
    :cond_0
    new-instance p1, Lo/Params;

    invoke-direct {p1}, Lo/Params;-><init>()V

    iput-object p1, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    .line 640
    new-instance p1, Lo/TransformationMethod;

    invoke-direct {p1}, Lo/TransformationMethod;-><init>()V

    iput-object p1, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    :goto_0
    return-void
.end method

.method private static f(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method a([I)I
    .locals 0

    .line 672
    invoke-super {p0, p1}, Lo/Intent$Application;->d([I)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    .line 676
    :cond_0
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, p1}, Lo/Intent$Application;->d([I)I

    move-result p1

    return p1
.end method

.method a()V
    .locals 1

    .line 646
    iget-object v0, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    invoke-virtual {v0}, Lo/Params;->b()Lo/Params;

    move-result-object v0

    iput-object v0, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    .line 647
    iget-object v0, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    invoke-virtual {v0}, Lo/TransformationMethod;->e()Lo/TransformationMethod;

    move-result-object v0

    iput-object v0, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    return-void
.end method

.method b(II)Z
    .locals 3

    .line 689
    invoke-static {p1, p2}, Lo/ContentResolver$TaskDescription;->f(II)J

    move-result-wide p1

    .line 690
    iget-object v0, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/Params;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v0, 0x100000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    iget-object v1, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lo/TransformationMethod;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method c(II)I
    .locals 3

    .line 684
    invoke-static {p1, p2}, Lo/ContentResolver$TaskDescription;->f(II)J

    move-result-wide p1

    .line 685
    iget-object v0, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/Params;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method d(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 9

    .line 651
    invoke-super {p0, p3}, Lo/Intent$Application;->b(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    .line 652
    invoke-static {p1, p2}, Lo/ContentResolver$TaskDescription;->f(II)J

    move-result-wide v0

    if-eqz p4, :cond_0

    const-wide v2, 0x200000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 657
    :goto_0
    iget-object v4, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    int-to-long v5, p3

    or-long v7, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v1, v7}, Lo/Params;->c(JLjava/lang/Object;)V

    if-eqz p4, :cond_1

    .line 659
    invoke-static {p2, p1}, Lo/ContentResolver$TaskDescription;->f(II)J

    move-result-wide p1

    .line 660
    iget-object p4, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    const-wide v0, 0x100000000L

    or-long/2addr v0, v5

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Lo/Params;->c(JLjava/lang/Object;)V

    :cond_1
    return p3
.end method

.method d([ILandroid/graphics/drawable/Drawable;I)I
    .locals 0

    .line 666
    invoke-super {p0, p1, p2}, Lo/Intent$Application;->e([ILandroid/graphics/drawable/Drawable;)I

    move-result p1

    .line 667
    iget-object p2, p0, Lo/ContentResolver$TaskDescription;->b:Lo/TransformationMethod;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lo/TransformationMethod;->b(ILjava/lang/Object;)V

    return p1
.end method

.method e(II)Z
    .locals 3

    .line 694
    invoke-static {p1, p2}, Lo/ContentResolver$TaskDescription;->f(II)J

    move-result-wide p1

    .line 695
    iget-object v0, p0, Lo/ContentResolver$TaskDescription;->c:Lo/Params;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lo/Params;->e(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v0, 0x200000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 701
    new-instance v0, Lo/ContentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ContentResolver;-><init>(Lo/ContentResolver$TaskDescription;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 707
    new-instance v0, Lo/ContentResolver;

    invoke-direct {v0, p0, p1}, Lo/ContentResolver;-><init>(Lo/ContentResolver$TaskDescription;Landroid/content/res/Resources;)V

    return-object v0
.end method
