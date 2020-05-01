.class public Lo/adO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa

    .line 28
    iput-wide v0, p0, Lo/adO;->e:J

    const/high16 v0, -0x80000000

    .line 33
    iput v0, p0, Lo/adO;->c:I

    return-void
.end method


# virtual methods
.method public e(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lo/adO;->d:J

    iget-wide v4, p0, Lo/adO;->e:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 67
    iget v4, p0, Lo/adO;->c:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    iput p1, p0, Lo/adO;->c:I

    .line 82
    iput-wide v0, p0, Lo/adO;->d:J

    const/4 p1, 0x0

    return p1
.end method
