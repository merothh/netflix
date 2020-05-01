.class public Lo/afO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/afJ;


# instance fields
.field private b:D

.field private d:I

.field private e:I

.field private f:J

.field private g:D

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 53
    iput v0, p0, Lo/afO;->e:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 61
    iput-wide v0, p0, Lo/afO;->b:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 66
    iput-wide v0, p0, Lo/afO;->g:D

    const v0, 0xea60

    .line 72
    iput v0, p0, Lo/afO;->h:I

    const v0, 0x1d4c0

    .line 79
    iput v0, p0, Lo/afO;->i:I

    .line 99
    invoke-virtual {p0}, Lo/afO;->c()V

    return-void
.end method

.method public constructor <init>(IDDII)V
    .locals 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 53
    iput v0, p0, Lo/afO;->e:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 61
    iput-wide v0, p0, Lo/afO;->b:D

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 66
    iput-wide v0, p0, Lo/afO;->g:D

    const v0, 0xea60

    .line 72
    iput v0, p0, Lo/afO;->h:I

    const v0, 0x1d4c0

    .line 79
    iput v0, p0, Lo/afO;->i:I

    .line 112
    iput p1, p0, Lo/afO;->e:I

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p2, v2

    if-gtz p1, :cond_1

    cmpg-double p1, p2, v0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iput-wide p2, p0, Lo/afO;->b:D

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    iput-wide v0, p0, Lo/afO;->b:D

    .line 118
    :goto_1
    iput-wide p4, p0, Lo/afO;->g:D

    .line 119
    iput p6, p0, Lo/afO;->h:I

    .line 120
    iput p7, p0, Lo/afO;->i:I

    .line 121
    invoke-virtual {p0}, Lo/afO;->c()V

    return-void
.end method

.method private d()V
    .locals 9

    .line 156
    iget v0, p0, Lo/afO;->d:I

    int-to-double v1, v0

    iget v3, p0, Lo/afO;->h:I

    int-to-double v4, v3

    iget-wide v6, p0, Lo/afO;->g:D

    div-double/2addr v4, v6

    cmpl-double v8, v1, v4

    if-ltz v8, :cond_0

    .line 157
    iput v3, p0, Lo/afO;->d:I

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    mul-double v0, v0, v6

    double-to-int v0, v0

    .line 159
    iput v0, p0, Lo/afO;->d:I

    :goto_0
    return-void
.end method

.method private static e(DDI)I
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    return p4

    :cond_0
    int-to-double v0, p4

    mul-double p0, p0, v0

    sub-double v2, v0, p0

    add-double/2addr v0, p0

    sub-double/2addr v0, v2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    mul-double p2, p2, v0

    add-double/2addr v2, p2

    double-to-int p0, v2

    return p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 169
    invoke-virtual {p0}, Lo/afO;->e()J

    move-result-wide v0

    iget v2, p0, Lo/afO;->i:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 5

    .line 136
    invoke-virtual {p0}, Lo/afO;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 140
    :cond_0
    iget-wide v0, p0, Lo/afO;->b:D

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lo/afO;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lo/afO;->e(DDI)I

    move-result v0

    .line 141
    invoke-direct {p0}, Lo/afO;->d()V

    int-to-long v0, v0

    return-wide v0
.end method

.method public c()V
    .locals 2

    .line 178
    iget v0, p0, Lo/afO;->e:I

    iput v0, p0, Lo/afO;->d:I

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/afO;->f:J

    return-void
.end method

.method public final e()J
    .locals 4

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/afO;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
