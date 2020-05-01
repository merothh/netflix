.class public final Lcom/crittercism/internal/dr$b;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Lcom/crittercism/internal/dr;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/dr;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/dr$b;->a:Lcom/crittercism/internal/dr;

    iput-boolean p2, p0, Lcom/crittercism/internal/dr$b;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/crittercism/internal/dr$b;->b:Z

    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "optOutStatus"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "optOutStatusSet"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    iget-object v0, v0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    sget-object v3, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    iget-object v3, v3, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v3, v2}, Lcom/crittercism/internal/av;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
