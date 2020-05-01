.class final Lcom/crittercism/internal/dh;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Lcom/crittercism/internal/bq;

.field private b:Lcom/crittercism/internal/bq;

.field private c:Lcom/crittercism/internal/ar;

.field private d:Ljava/net/URL;

.field private e:Lcom/crittercism/internal/cy;

.field private f:Lcom/crittercism/internal/cx;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Lcom/crittercism/internal/ar;Ljava/net/URL;Lcom/crittercism/internal/cy;Lcom/crittercism/internal/cx;)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/dh;->b:Lcom/crittercism/internal/bq;

    iput-object p2, p0, Lcom/crittercism/internal/dh;->a:Lcom/crittercism/internal/bq;

    iput-object p3, p0, Lcom/crittercism/internal/dh;->c:Lcom/crittercism/internal/ar;

    iput-object p4, p0, Lcom/crittercism/internal/dh;->d:Ljava/net/URL;

    iput-object p5, p0, Lcom/crittercism/internal/dh;->e:Lcom/crittercism/internal/cy;

    iput-object p6, p0, Lcom/crittercism/internal/dh;->f:Lcom/crittercism/internal/cx;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/crittercism/internal/dh;->a:Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/dh;->b:Lcom/crittercism/internal/bq;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/bq;)V

    iget-object v0, p0, Lcom/crittercism/internal/dh;->f:Lcom/crittercism/internal/cx;

    iget-object v1, p0, Lcom/crittercism/internal/dh;->c:Lcom/crittercism/internal/ar;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/cx;->a(Lcom/crittercism/internal/ar;)Lcom/crittercism/internal/cw;

    move-result-object v0

    iget-object v1, p0, Lcom/crittercism/internal/dh;->b:Lcom/crittercism/internal/bq;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/cw;->a(Lcom/crittercism/internal/bq;)Lcom/crittercism/internal/cw;

    move-result-object v0

    new-instance v1, Lcom/crittercism/internal/dc;

    iget-object v2, p0, Lcom/crittercism/internal/dh;->d:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/dc;-><init>(Ljava/net/URL;)V

    new-instance v2, Lcom/crittercism/internal/dj;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/crittercism/internal/dh;->e:Lcom/crittercism/internal/cy;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/crittercism/internal/dj;-><init>(Lcom/crittercism/internal/cw;Lcom/crittercism/internal/dc;ZLcom/crittercism/internal/cy;)V

    invoke-virtual {v2}, Lcom/crittercism/internal/dj;->run()V

    return-void
.end method
