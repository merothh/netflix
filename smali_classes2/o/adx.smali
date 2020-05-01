.class public abstract Lo/adx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adx$Activity;,
        Lo/adx$ActionBar;,
        Lo/adx$Application;
    }
.end annotation


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:I

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/adx$Application;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected i:J

.field protected j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJZZ)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nf_event"

    .line 27
    iput-object v0, p0, Lo/adx;->c:Ljava/lang/String;

    const/16 v0, 0x64

    .line 42
    iput v0, p0, Lo/adx;->d:I

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/adx;->i:J

    const-wide/32 v0, 0x493e0

    .line 52
    iput-wide v0, p0, Lo/adx;->j:J

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/adx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/adx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/adx;->f:Ljava/util/List;

    .line 102
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lo/adx;->c:Ljava/lang/String;

    :cond_0
    if-lez p2, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-lez p1, :cond_3

    .line 113
    iput p2, p0, Lo/adx;->d:I

    .line 114
    iput-wide p3, p0, Lo/adx;->j:J

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    .line 116
    iget-object p2, p0, Lo/adx;->f:Ljava/util/List;

    new-instance p3, Lo/adx$ActionBar;

    invoke-direct {p3, p0, p1}, Lo/adx$ActionBar;-><init>(Lo/adx;Lo/adx$5;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p6, :cond_2

    .line 119
    iget-object p2, p0, Lo/adx;->f:Ljava/util/List;

    new-instance p3, Lo/adx$Activity;

    invoke-direct {p3, p0, p1}, Lo/adx$Activity;-><init>(Lo/adx;Lo/adx$5;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 110
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stay time in queue must be higher than 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of events must be higher than 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 7

    const/16 v2, 0x64

    const-wide/32 v3, 0x493e0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 88
    invoke-direct/range {v0 .. v6}, Lo/adx;-><init>(Ljava/lang/String;IJZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 153
    iget-object v0, p0, Lo/adx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public b()Z
    .locals 7

    .line 191
    iget-object v0, p0, Lo/adx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lo/adx;->c:Ljava/lang/String;

    const-string v2, "Not started state::  we can not flush events"

    invoke-static {v0, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 196
    :cond_0
    iget-object v0, p0, Lo/adx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lo/adx;->c:Ljava/lang/String;

    const-string v2, "Paused state:: we can not flush events"

    invoke-static {v0, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_1
    iget-object v0, p0, Lo/adx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    .line 205
    iget-object v0, p0, Lo/adx;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/adx$Application;

    .line 206
    invoke-virtual {p0}, Lo/adx;->j()I

    move-result v4

    iget-wide v5, p0, Lo/adx;->i:J

    invoke-interface {v3, v4, v5, v6}, Lo/adx$Application;->b(IJ)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1

    .line 211
    :cond_4
    iget-object v0, p0, Lo/adx;->c:Ljava/lang/String;

    const-string v1, "No rules to flush queue, go and flush queue"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public c()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lo/adx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lo/adx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Lo/adx;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v1}, Lo/adx;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract j()I
.end method
