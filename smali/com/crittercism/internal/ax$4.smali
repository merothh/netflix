.class final Lcom/crittercism/internal/ax$4;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/ax;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/ax$4;->b:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$4;->a:Lcom/crittercism/internal/ax;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/crittercism/internal/ax$4;->b:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/crittercism/internal/cu;

    iget-object v1, p0, Lcom/crittercism/internal/ax$4;->a:Lcom/crittercism/internal/ax;

    invoke-direct {v0, v1}, Lcom/crittercism/internal/cu;-><init>(Lcom/crittercism/internal/ar;)V

    const-string/jumbo v1, "metadata"

    iget-object v2, p0, Lcom/crittercism/internal/ax$4;->a:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    invoke-virtual {v2}, Lcom/crittercism/internal/du;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcom/crittercism/internal/cu;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/crittercism/internal/db;

    iget-object v2, p0, Lcom/crittercism/internal/ax$4;->b:Lcom/crittercism/internal/ax;

    iget-object v2, v2, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    iget-object v2, v2, Lcom/crittercism/internal/az;->c:Lcom/crittercism/internal/bl;

    iget-object v2, v2, Lcom/crittercism/internal/bl;->b:Ljava/lang/String;

    const-string/jumbo v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/crittercism/internal/db;->a()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Lcom/crittercism/internal/dc;

    invoke-direct {v2, v1}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    new-instance v1, Lcom/crittercism/internal/dd;

    iget-object v3, p0, Lcom/crittercism/internal/ax$4;->a:Lcom/crittercism/internal/ax;

    iget-object v3, v3, Lcom/crittercism/internal/ax;->x:Lcom/crittercism/internal/du;

    invoke-direct {v1, v3}, Lcom/crittercism/internal/dd;-><init>(Lcom/crittercism/internal/du;)V

    new-instance v3, Lcom/crittercism/internal/dj;

    invoke-direct {v3, v0, v2, v1}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;Lcom/crittercism/internal/cy;)V

    invoke-virtual {v3}, Lcom/crittercism/internal/dj;->run()V

    goto :goto_0
.end method
