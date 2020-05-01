.class public Lo/aeC$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:I

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lo/aeC$TaskDescription$1;

    invoke-direct {v0, p0}, Lo/aeC$TaskDescription$1;-><init>(Lo/aeC$TaskDescription;)V

    iput-object v0, p0, Lo/aeC$TaskDescription;->j:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/aeC$TaskDescription;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lo/aeC$TaskDescription;)Ljava/lang/Runnable;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/aeC$TaskDescription;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lo/aeC$TaskDescription;)Landroid/os/Handler;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/aeC$TaskDescription;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lo/aeC$TaskDescription;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lo/aeC$TaskDescription;->b:Z

    return p0
.end method

.method static synthetic d(Lo/aeC$TaskDescription;)I
    .locals 2

    .line 82
    iget v0, p0, Lo/aeC$TaskDescription;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lo/aeC$TaskDescription;->c:I

    return v0
.end method

.method static synthetic e(Lo/aeC$TaskDescription;)I
    .locals 0

    .line 82
    iget p0, p0, Lo/aeC$TaskDescription;->c:I

    return p0
.end method

.method static synthetic f(Lo/aeC$TaskDescription;)Ljava/lang/Runnable;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/aeC$TaskDescription;->e:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 137
    iget v0, p0, Lo/aeC$TaskDescription;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 141
    iput p1, p0, Lo/aeC$TaskDescription;->c:I

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/aeC$TaskDescription;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lo/aeC$TaskDescription;->b:Z

    return-void
.end method

.method public d()V
    .locals 4

    .line 118
    iget-boolean v0, p0, Lo/aeC$TaskDescription;->b:Z

    if-nez v0, :cond_0

    iget v0, p0, Lo/aeC$TaskDescription;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lo/aeC$TaskDescription;->b:Z

    .line 120
    iget-object v0, p0, Lo/aeC$TaskDescription;->a:Landroid/os/Handler;

    iget-object v1, p0, Lo/aeC$TaskDescription;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/aeC$TaskDescription;->e:Ljava/lang/Runnable;

    return-void
.end method
