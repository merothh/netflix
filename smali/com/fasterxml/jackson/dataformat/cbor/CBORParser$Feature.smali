.class public final enum Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/dataformat/cbor/CBORParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic d:[Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;


# instance fields
.field final a:I

.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    .line 25
    sput-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->d:[Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    return-void
.end method

.method public static b()I
    .locals 6

    .line 40
    invoke-static {}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->values()[Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 41
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v4}, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->d()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;
    .locals 1

    .line 25
    const-class v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;
    .locals 1

    .line 25
    sget-object v0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->d:[Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/fasterxml/jackson/dataformat/cbor/CBORParser$Feature;->a:I

    return v0
.end method
