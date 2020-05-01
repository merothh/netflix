.class public Lcom/netflix/mediaclient/service/msl/client/AndroidBase64Impl;
.super Ljava/lang/Object;
.source "AndroidBase64Impl.java"

# interfaces
.implements Lcom/netflix/msl/util/Base64$Base64Impl;


# static fields
.field private static final DECODE_FLAGS:I = 0x2

.field private static final ENCODE_FLAGS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
