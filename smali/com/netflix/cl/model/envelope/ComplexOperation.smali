.class public Lcom/netflix/cl/model/envelope/ComplexOperation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/envelope/Operation;


# instance fields
.field private simpleOperations:[Lcom/netflix/cl/model/envelope/SimpleOperation;


# virtual methods
.method public toJsonArray()Lorg/json/JSONArray;
    .locals 5

    .line 30
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/netflix/cl/model/envelope/ComplexOperation;->simpleOperations:[Lcom/netflix/cl/model/envelope/SimpleOperation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 33
    invoke-interface {v4, v0}, Lcom/netflix/cl/model/envelope/SimpleOperation;->addItself(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
