.class public final Lcom/crittercism/internal/cc;
.super Lcom/crittercism/internal/cg;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    sget v0, Lcom/crittercism/internal/cc$a;->a:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/crittercism/internal/cc$a;->b:I

    :cond_0
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    sget v0, Lcom/crittercism/internal/cc$a;->c:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/crittercism/internal/cc$a;->d:I

    :cond_0
    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    iput-object p2, p0, Lcom/crittercism/internal/cc;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/internal/cg;-><init>()V

    sget v0, Lcom/crittercism/internal/cc$a;->e:I

    sget-object v0, Lcom/crittercism/internal/ce;->a:Lcom/crittercism/internal/ce;

    invoke-virtual {v0}, Lcom/crittercism/internal/ce;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    sget-object v0, Lcom/crittercism/internal/eb;->a:Lcom/crittercism/internal/eb;

    invoke-virtual {v0}, Lcom/crittercism/internal/eb;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    iput p1, p0, Lcom/crittercism/internal/cc;->c:I

    iput-object p2, p0, Lcom/crittercism/internal/cc;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/crittercism/internal/cc;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "change"

    iget v2, p0, Lcom/crittercism/internal/cc;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->c:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->d:I

    if-ne v1, v2, :cond_2

    :cond_0
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/crittercism/internal/cc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_2
    iget v1, p0, Lcom/crittercism/internal/cc;->c:I

    sget v2, Lcom/crittercism/internal/cc$a;->e:I

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "oldType"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "newType"

    iget-object v2, p0, Lcom/crittercism/internal/cc;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/cc;->a:Ljava/lang/String;

    return-object v0
.end method
