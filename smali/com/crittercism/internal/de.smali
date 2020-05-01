.class public final Lcom/crittercism/internal/de;
.super Lcom/crittercism/internal/di;


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/de;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/de;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
