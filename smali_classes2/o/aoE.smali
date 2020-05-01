.class public abstract Lo/aoE;
.super Lo/aon;
.source ""


# instance fields
.field private b:Z

.field private c:J

.field private e:Lo/apu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/apu<",
            "Lo/aoB<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/aon;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo/aoE;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lo/aoE;->a(Z)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final e(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 104
    iget-wide v0, p0, Lo/aoE;->c:J

    invoke-direct {p0, p1}, Lo/aoE;->e(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/aoE;->c:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lo/aoE;->b:Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lo/aoE;->e:Lo/apu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lo/apu;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aoB;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lo/aoB;->run()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final c(Z)V
    .locals 4

    .line 109
    iget-wide v0, p0, Lo/aoE;->c:J

    invoke-direct {p0, p1}, Lo/aoE;->e(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/aoE;->c:J

    .line 110
    iget-wide v0, p0, Lo/aoE;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lo/aoo;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lo/aoE;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 112
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lo/aoE;->b:Z

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p0}, Lo/aoE;->j()V

    :cond_4
    return-void
.end method

.method protected c()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/aoE;->h()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/aoE;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lo/aoE;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected e()J
    .locals 3

    .line 62
    iget-object v0, p0, Lo/aoE;->e:Lo/apu;

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lo/apu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :cond_1
    :goto_0
    return-wide v1
.end method

.method public final e(Lo/aoB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/aoB<",
            "*>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lo/aoE;->e:Lo/apu;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Lo/apu;

    invoke-direct {v0}, Lo/apu;-><init>()V

    iput-object v0, p0, Lo/aoE;->e:Lo/apu;

    .line 87
    :goto_0
    invoke-virtual {v0, p1}, Lo/apu;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Z
    .locals 6

    .line 94
    iget-wide v0, p0, Lo/aoE;->c:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lo/aoE;->e(Z)J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final h()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lo/aoE;->e:Lo/apu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/apu;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method
