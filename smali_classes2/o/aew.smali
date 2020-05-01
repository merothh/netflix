.class public abstract Lo/aew;
.super Lo/adx;
.source ""


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJZZ)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p6}, Lo/adx;-><init>(Ljava/lang/String;IJZZ)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .line 59
    iget-object v0, p0, Lo/aew;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object p1, p0, Lo/aew;->c:Ljava/lang/String;

    const-string v0, "flushEvents:: can NOT flush queue, it is not started yet!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lo/aew;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lo/aew;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Flushing %d events, save if failed %b"

    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    invoke-virtual {p0, p1}, Lo/aew;->d(Z)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/aew;->i:J

    .line 66
    iput v3, p0, Lo/aew;->b:I

    return-void
.end method

.method protected abstract d(Z)V
.end method

.method public d(I)Z
    .locals 4

    .line 41
    iput p1, p0, Lo/aew;->b:I

    .line 42
    iget-object p1, p0, Lo/aew;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lo/aew;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Events counter: %d"

    invoke-static {p1, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    invoke-virtual {p0}, Lo/aew;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lo/aew;->a(Z)V

    return v0

    :cond_0
    return v3
.end method

.method public j()I
    .locals 1

    .line 53
    iget v0, p0, Lo/aew;->b:I

    return v0
.end method
