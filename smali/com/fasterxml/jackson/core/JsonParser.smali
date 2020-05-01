.class public abstract Lcom/fasterxml/jackson/core/JsonParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/JsonParser$Feature;,
        Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    }
.end annotation


# instance fields
.field protected b:I

.field protected transient d:Lcom/fasterxml/jackson/core/util/RequestPayload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1390
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->b()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1391
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->m:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1392
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->o:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    .line 1393
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Current token (%s) not of boolean type"

    .line 1394
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->d:Lcom/fasterxml/jackson/core/util/RequestPayload;

    .line 1395
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;->d(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method public b()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/fasterxml/jackson/core/JsonLocation;
.end method

.method public c(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    .line 685
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->b:I

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->e(I)Z

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
    .locals 1

    .line 1804
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->d:Lcom/fasterxml/jackson/core/util/RequestPayload;

    .line 1805
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParseException;->d(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract e()Lcom/fasterxml/jackson/core/JsonToken;
.end method
