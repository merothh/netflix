.class public final Lcom/crittercism/internal/bh;
.super Lcom/crittercism/internal/cg;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bh;->a:Ljava/lang/String;

    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bh;->b:Ljava/lang/String;

    iput p1, p0, Lcom/crittercism/internal/bh;->c:I

    iput-object p2, p0, Lcom/crittercism/internal/bh;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "event"

    iget v2, p0, Lcom/crittercism/internal/bh;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "viewName"

    iget-object v2, p0, Lcom/crittercism/internal/bh;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crittercism/internal/bh;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/bh;->a:Ljava/lang/String;

    return-object v0
.end method
