.class public final Lorg/chromium/net/HttpUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lorg/chromium/net/HttpUtil;->nativeIsAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static native nativeIsAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z
.end method
