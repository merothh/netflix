.class public final Lcom/crittercism/internal/bc;
.super Lcom/crittercism/app/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    const-string/jumbo v0, "Creating no-op transaction"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.start() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.setValue(double) call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a_()I
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.getValue() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final b()V
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.stop() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.fail() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const-string/jumbo v0, "No-op transaction. Ignoring Transaction.cancel() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
