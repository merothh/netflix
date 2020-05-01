.class Lo/FragmentTransaction$TaskDescription;
.super Ljava/io/FilterInputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private c:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 474
    iput p1, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lo/FragmentTransaction$3;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lo/FragmentTransaction$TaskDescription;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lo/FragmentTransaction$TaskDescription;)I
    .locals 0

    .line 473
    iget p0, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    return p0
.end method


# virtual methods
.method public read()I
    .locals 2

    .line 482
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 484
    iget v1, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 491
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 493
    iget p2, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lo/FragmentTransaction$TaskDescription;->c:I

    :cond_0
    return p1
.end method
