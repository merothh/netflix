.class public Lo/NetworkPolicyManager;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private a:[B

.field private b:[J

.field private c:[J

.field private final d:I

.field private e:S

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IISII)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 34
    iput p1, p0, Lo/NetworkPolicyManager;->g:I

    const/4 p1, 0x4

    .line 58
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lo/NetworkPolicyManager;->d:I

    .line 60
    iget p4, p0, Lo/NetworkPolicyManager;->d:I

    new-array v0, p4, [B

    iput-object v0, p0, Lo/NetworkPolicyManager;->a:[B

    new-array v0, p1, [J

    .line 61
    iput-object v0, p0, Lo/NetworkPolicyManager;->b:[J

    new-array p1, p1, [J

    .line 62
    iput-object p1, p0, Lo/NetworkPolicyManager;->c:[J

    .line 64
    iput p4, p0, Lo/NetworkPolicyManager;->i:I

    .line 65
    iput p4, p0, Lo/NetworkPolicyManager;->h:I

    xor-int p1, p2, p6

    xor-int p2, p4, p6

    .line 67
    invoke-static {p1, p2}, Lo/NetworkSpecifier;->a(II)[J

    move-result-object p1

    iput-object p1, p0, Lo/NetworkPolicyManager;->b:[J

    xor-int p1, p3, p6

    xor-int p2, p5, p6

    .line 69
    invoke-static {p1, p2}, Lo/NetworkSpecifier;->a(II)[J

    move-result-object p1

    iput-object p1, p0, Lo/NetworkPolicyManager;->c:[J

    return-void
.end method

.method private b()I
    .locals 6

    .line 170
    iget v0, p0, Lo/NetworkPolicyManager;->g:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lo/NetworkPolicyManager;->g:I

    .line 175
    :cond_0
    iget v0, p0, Lo/NetworkPolicyManager;->i:I

    iget v1, p0, Lo/NetworkPolicyManager;->d:I

    if-ne v0, v1, :cond_6

    .line 178
    iget-object v0, p0, Lo/NetworkPolicyManager;->a:[B

    iget v1, p0, Lo/NetworkPolicyManager;->g:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const-string v0, "unexpected block size"

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    .line 192
    :cond_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lo/NetworkPolicyManager;->a:[B

    iget v5, p0, Lo/NetworkPolicyManager;->d:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    add-int/2addr v1, v2

    .line 205
    iget v2, p0, Lo/NetworkPolicyManager;->d:I

    if-lt v1, v2, :cond_1

    .line 209
    :cond_2
    iget v2, p0, Lo/NetworkPolicyManager;->d:I

    if-lt v1, v2, :cond_4

    .line 215
    invoke-direct {p0}, Lo/NetworkPolicyManager;->d()V

    .line 218
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lo/NetworkPolicyManager;->g:I

    .line 221
    iput v3, p0, Lo/NetworkPolicyManager;->i:I

    .line 225
    iget v0, p0, Lo/NetworkPolicyManager;->g:I

    if-gez v0, :cond_3

    iget v0, p0, Lo/NetworkPolicyManager;->d:I

    iget-object v1, p0, Lo/NetworkPolicyManager;->a:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lo/NetworkPolicyManager;->d:I

    :goto_0
    iput v0, p0, Lo/NetworkPolicyManager;->h:I

    goto :goto_1

    .line 211
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_6
    :goto_1
    iget v0, p0, Lo/NetworkPolicyManager;->h:I

    return v0
.end method

.method private d()V
    .locals 8

    .line 154
    iget-object v0, p0, Lo/NetworkPolicyManager;->b:[J

    iget-object v1, p0, Lo/NetworkPolicyManager;->c:[J

    iget-short v2, p0, Lo/NetworkPolicyManager;->e:S

    invoke-static {v0, v1, v2}, Lo/NetworkSpecifier;->b([J[JI)V

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget v1, p0, Lo/NetworkPolicyManager;->d:I

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lo/NetworkPolicyManager;->a:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lo/NetworkPolicyManager;->b:[J

    iget-short v5, p0, Lo/NetworkPolicyManager;->e:S

    aget-wide v5, v4, v5

    shl-int/lit8 v4, v0, 0x3

    shr-long v4, v5, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-short v0, p0, Lo/NetworkPolicyManager;->e:S

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lo/NetworkPolicyManager;->e:S

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 135
    invoke-direct {p0}, Lo/NetworkPolicyManager;->b()I

    .line 136
    iget v0, p0, Lo/NetworkPolicyManager;->h:I

    iget v1, p0, Lo/NetworkPolicyManager;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    .line 81
    invoke-direct {p0}, Lo/NetworkPolicyManager;->b()I

    .line 84
    iget v0, p0, Lo/NetworkPolicyManager;->i:I

    iget v1, p0, Lo/NetworkPolicyManager;->h:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iget-object v1, p0, Lo/NetworkPolicyManager;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lo/NetworkPolicyManager;->i:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 104
    invoke-direct {p0}, Lo/NetworkPolicyManager;->b()I

    .line 107
    iget v2, p0, Lo/NetworkPolicyManager;->i:I

    iget v3, p0, Lo/NetworkPolicyManager;->h:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 113
    iget-object v4, p0, Lo/NetworkPolicyManager;->a:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lo/NetworkPolicyManager;->i:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public skip(J)J
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
