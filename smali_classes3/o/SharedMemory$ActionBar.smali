.class public final Lo/SharedMemory$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/SharedMemory$ActionBar;-><init>()V

    return-void
.end method

.method private final d(IIII)I
    .locals 1

    sub-int/2addr p4, p3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const v0, 0x800005

    if-eq p1, v0, :cond_2

    const/4 p4, 0x0

    goto :goto_0

    .line 34
    :cond_0
    div-int/lit8 p4, p4, 0x2

    goto :goto_0

    .line 35
    :cond_1
    div-int/lit8 p4, p4, 0x2

    :cond_2
    :goto_0
    if-ne p2, p3, :cond_3

    neg-int p4, p4

    :cond_3
    return p4
.end method

.method public static final synthetic d(Lo/SharedMemory$ActionBar;IIII)I
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lo/SharedMemory$ActionBar;->d(IIII)I

    move-result p0

    return p0
.end method
