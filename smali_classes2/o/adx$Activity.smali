.class Lo/adx$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/adx$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/adx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic e:Lo/adx;


# direct methods
.method private constructor <init>(Lo/adx;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/adx$Activity;->e:Lo/adx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/adx;Lo/adx$5;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lo/adx$Activity;-><init>(Lo/adx;)V

    return-void
.end method


# virtual methods
.method public b(IJ)Z
    .locals 2

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 295
    iget-object p1, p0, Lo/adx$Activity;->e:Lo/adx;

    iget-wide p1, p1, Lo/adx;->j:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
