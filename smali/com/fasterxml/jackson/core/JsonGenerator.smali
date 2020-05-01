.class public abstract Lcom/fasterxml/jackson/core/JsonGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .line 1961
    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw v0
.end method

.method public b([B)V
    .locals 3

    .line 1163
    invoke-static {}, Lo/UsbAccessory;->d()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->d(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 750
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->a()V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 841
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->e(Ljava/lang/String;)V

    return-void
.end method

.method public abstract d(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.end method

.method public abstract e(Ljava/lang/String;)V
.end method
