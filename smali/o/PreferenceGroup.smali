.class public final Lo/PreferenceGroup;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lo/PreferenceGroup;->a:Ljava/text/NumberFormat;

    return-void
.end method

.method public static final a(D)Lo/PrinterInfo;
    .locals 3

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpg-double v2, p0, v0

    if-nez v2, :cond_2

    double-to-long p0, p0

    const v0, 0x7fffffff

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/high16 v0, -0x80000000

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    long-to-int p1, p0

    .line 329
    invoke-static {p1}, Lo/PrintFileDocumentAdapter;->e(I)Lo/PrinterInfo;

    move-result-object p0

    goto :goto_1

    .line 331
    :cond_1
    invoke-static {p0, p1}, Lo/PrintFileDocumentAdapter;->a(J)Lo/PrinterInfo;

    move-result-object p0

    goto :goto_1

    .line 334
    :cond_2
    invoke-static {p0, p1}, Lo/PrintFileDocumentAdapter;->b(D)Lo/PrinterInfo;

    move-result-object p0

    :goto_1
    return-object p0
.end method
