.class public Lo/PooledStringReader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PooledStringReader$Application;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/Runnable;

.field private h:Z

.field private final i:Lo/ParcelFormatException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ParcelFormatException;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lo/PooledStringReader;-><init>(Landroid/content/Context;Lo/ParcelFormatException;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ParcelFormatException;Z)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/PooledStringReader;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lo/PooledStringReader;->d:I

    .line 51
    iput v0, p0, Lo/PooledStringReader;->c:I

    .line 53
    iput v0, p0, Lo/PooledStringReader;->a:I

    .line 55
    iput-boolean v0, p0, Lo/PooledStringReader;->h:Z

    .line 76
    new-instance v0, Lo/PooledStringReader$2;

    invoke-direct {v0, p0}, Lo/PooledStringReader$2;-><init>(Lo/PooledStringReader;)V

    iput-object v0, p0, Lo/PooledStringReader;->g:Ljava/lang/Runnable;

    .line 66
    iput-object p2, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    .line 67
    iget-object p2, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    invoke-virtual {p2}, Lo/ParcelFormatException;->c()I

    move-result p2

    iput p2, p0, Lo/PooledStringReader;->a:I

    .line 68
    iput-boolean p3, p0, Lo/PooledStringReader;->f:Z

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lo/IHwInterface$Dialog;->b:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eaaaaab

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lo/PooledStringReader;->e:I

    return-void
.end method

.method static synthetic a(Lo/PooledStringReader;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/PooledStringReader;->c:I

    return p0
.end method

.method static synthetic b(Lo/PooledStringReader;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lo/PooledStringReader;->h:Z

    return p0
.end method

.method static synthetic c(Lo/PooledStringReader;)Lo/ParcelFormatException;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    return-object p0
.end method

.method static synthetic d(Lo/PooledStringReader;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/PooledStringReader;->d:I

    return p0
.end method

.method static synthetic d(Lo/PooledStringReader;I)I
    .locals 0

    .line 27
    iput p1, p0, Lo/PooledStringReader;->c:I

    return p1
.end method

.method static synthetic e(Lo/PooledStringReader;)I
    .locals 2

    .line 27
    iget v0, p0, Lo/PooledStringReader;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/PooledStringReader;->c:I

    return v0
.end method

.method static synthetic e(Lo/PooledStringReader;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lo/PooledStringReader;->h:Z

    return p1
.end method

.method static synthetic f(Lo/PooledStringReader;)Ljava/lang/Runnable;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/PooledStringReader;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lo/PooledStringReader;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lo/PooledStringReader;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lo/PooledStringReader;)I
    .locals 0

    .line 27
    iget p0, p0, Lo/PooledStringReader;->e:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lo/PooledStringReader;->h:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 149
    iget v0, p0, Lo/PooledStringReader;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/PooledStringReader;->d:I

    .line 150
    iget v0, p0, Lo/PooledStringReader;->d:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lo/PooledStringReader;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lo/PooledStringReader;->e()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 153
    iget-object v3, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    invoke-virtual {v3}, Lo/ParcelFormatException;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lo/PooledStringReader;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PulseAnimator"

    const-string v2, "Row#%s onPulseAttached with %s attached"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 177
    iget p1, p0, Lo/PooledStringReader;->d:I

    if-lez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lo/PooledStringReader;->e()V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    invoke-virtual {v1}, Lo/ParcelFormatException;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lo/PooledStringReader;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PulseAnimator"

    const-string v1, "Row#%s onAttachedToRecyclerView with %s attached"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lo/PooledStringReader;->h:Z

    return v0
.end method

.method public d()V
    .locals 4

    .line 162
    iget v0, p0, Lo/PooledStringReader;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/PooledStringReader;->d:I

    .line 163
    iget v0, p0, Lo/PooledStringReader;->d:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lo/PooledStringReader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lo/PooledStringReader;->a()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    invoke-virtual {v3}, Lo/ParcelFormatException;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lo/PooledStringReader;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PulseAnimator"

    const-string v2, "Row#%s onPulseDetached with %s attached"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPulsesCount should not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lo/PooledStringReader;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lo/PooledStringReader;->a()V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lo/PooledStringReader;->i:Lo/ParcelFormatException;

    invoke-virtual {v1}, Lo/ParcelFormatException;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lo/PooledStringReader;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "PulseAnimator"

    const-string v1, "Row#%s onDetachedFromRecyclerView with %s attached"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lo/PooledStringReader;->h:Z

    .line 128
    iget-boolean v1, p0, Lo/PooledStringReader;->f:Z

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lo/PooledStringReader;->b:Landroid/os/Handler;

    iget-object v2, p0, Lo/PooledStringReader;->g:Ljava/lang/Runnable;

    iget v3, p0, Lo/PooledStringReader;->a:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-int/lit16 v0, v0, 0xfa

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lo/PooledStringReader;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
