.class public final Lcom/netflix/cl/model/ABTestAllocations;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/cl/model/JsonSerializer;


# instance fields
.field private tests:[Lcom/netflix/cl/model/ABTest;


# direct methods
.method public constructor <init>([Lcom/netflix/cl/model/ABTest;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netflix/cl/model/ABTestAllocations;->tests:[Lcom/netflix/cl/model/ABTest;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/netflix/cl/model/ABTestAllocations;->tests:[Lcom/netflix/cl/model/ABTest;

    if-eqz v1, :cond_1

    .line 30
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 31
    iget-object v5, v4, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 32
    iget-object v5, v4, Lcom/netflix/cl/model/ABTest;->testId:Ljava/lang/String;

    iget v4, v4, Lcom/netflix/cl/model/ABTest;->cell:I

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
