.class public final Lorg/chromium/base/compat/ApiHelperForP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation build Lorg/chromium/base/annotations/DoNotInline;
.end annotation


# direct methods
.method public static getPrivateDnsServerName(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrivateDnsActive(Landroid/net/LinkProperties;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result p0

    return p0
.end method
