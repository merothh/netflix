.class public final Lcom/crittercism/internal/ax$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/ax$b;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ax;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/internal/ax$1;->b:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ax$1;->a:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/c;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ax$1;->a:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
