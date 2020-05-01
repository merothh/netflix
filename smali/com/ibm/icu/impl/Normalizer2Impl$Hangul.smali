.class public final Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangul"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(ILjava/lang/Appendable;)I
    .locals 2

    const v0, 0xac00

    sub-int/2addr p0, v0

    .line 68
    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    .line 69
    div-int/lit8 p0, p0, 0x1c

    .line 70
    div-int/lit8 v1, p0, 0x15

    add-int/lit16 v1, v1, 0x1100

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    rem-int/lit8 p0, p0, 0x15

    add-int/lit16 p0, p0, 0x1161

    int-to-char p0, p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit16 v0, v0, 0x11a7

    int-to-char p0, v0

    .line 75
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isHangulWithoutJamoT(C)Z
    .locals 1

    const v0, 0xac00

    sub-int/2addr p0, v0

    int-to-char p0, p0

    const/16 v0, 0x2ba4

    if-ge p0, v0, :cond_0

    .line 52
    rem-int/lit8 p0, p0, 0x1c

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
