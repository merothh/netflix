.class public final Lo/PrintService$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/PrintService$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(JJJ)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v5, p1, v2

    if-nez v5, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    cmp-long p5, p3, p1

    if-lez p5, :cond_1

    goto :goto_0

    :cond_3
    if-gez v4, :cond_4

    sub-long/2addr p3, p5

    neg-long p1, p1

    cmp-long p5, p3, p1

    if-lez p5, :cond_1

    :cond_4
    :goto_0
    return v1
.end method
