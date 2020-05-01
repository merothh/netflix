.class public final Lcom/crittercism/internal/dx;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/de;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/de;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/crittercism/internal/de;

    invoke-direct {v0, p1}, Lcom/crittercism/internal/de;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
