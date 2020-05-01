.class public final Lo/apB$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/apB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lo/apB$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(JI)J
    .locals 3

    .line 295
    move-object v0, p0

    check-cast v0, Lo/apB$ActionBar;

    const-wide/32 v1, 0x3fffffff

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/apB$ActionBar;->e(JJ)J

    move-result-wide p1

    int-to-long v0, p3

    const/4 p3, 0x0

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final d(J)I
    .locals 3

    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final d(JI)J
    .locals 3

    .line 296
    move-object v0, p0

    check-cast v0, Lo/apB$ActionBar;

    const-wide v1, 0xfffffffc0000000L

    invoke-virtual {v0, p1, p2, v1, v2}, Lo/apB$ActionBar;->e(JJ)J

    move-result-wide p1

    int-to-long v0, p3

    const/16 p3, 0x1e

    shl-long/2addr v0, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final e(JJ)J
    .locals 0

    not-long p3, p3

    and-long/2addr p1, p3

    return-wide p1
.end method
