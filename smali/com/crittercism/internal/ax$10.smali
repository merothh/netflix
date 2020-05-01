.class final Lcom/crittercism/internal/ax$10;
.super Lcom/crittercism/internal/di;


# instance fields
.field final synthetic a:Lcom/crittercism/internal/c;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/ax$10;->b:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$10;->a:Lcom/crittercism/internal/c;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/ax$10;->b:Lcom/crittercism/internal/ax;

    iget-object v0, v0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    iget-object v1, p0, Lcom/crittercism/internal/ax$10;->a:Lcom/crittercism/internal/c;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    return-void
.end method
