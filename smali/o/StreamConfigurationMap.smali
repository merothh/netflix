.class public Lo/StreamConfigurationMap;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lo/MarshalQueryableStreamConfiguration;Z)Lo/TonemapCurve;
    .locals 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->a()I

    move-result p1

    .line 29
    new-instance v0, Lo/StreamConfiguration;

    .line 30
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->e()Lo/RequestQueue;

    move-result-object p0

    new-instance v1, Lo/CharArrayReader$StateListAnimator;

    invoke-direct {v1, p1}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lo/StreamConfiguration;-><init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V

    return-object v0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 32
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->a()I

    move-result p1

    .line 33
    new-instance v0, Lo/ReprocessFormatsMap;

    .line 34
    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->e()Lo/RequestQueue;

    move-result-object p0

    new-instance v1, Lo/CharArrayReader$StateListAnimator;

    invoke-direct {v1, p1}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lo/ReprocessFormatsMap;-><init>(Lo/RequestQueue;ILo/CharArrayReader$StateListAnimator;)V

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_2

    .line 37
    new-instance p0, Lo/VendorTagDescriptor;

    invoke-direct {p0}, Lo/VendorTagDescriptor;-><init>()V

    return-object p0

    .line 39
    :cond_2
    new-instance p1, Lo/StreamConfigurationDuration;

    invoke-virtual {p0}, Lo/MarshalQueryableStreamConfiguration;->d()Lo/MarshalQueryableNativeByteToInteger;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/StreamConfigurationDuration;-><init>(Lo/MarshalQueryableNativeByteToInteger;)V

    return-object p1
.end method
