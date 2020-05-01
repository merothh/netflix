.class public final Lcom/crittercism/internal/bm;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/bq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/crittercism/internal/bq;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/bo;

    invoke-virtual {v0}, Lcom/crittercism/internal/bo;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/crittercism/internal/bm;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-void
.end method
