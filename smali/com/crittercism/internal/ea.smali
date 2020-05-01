.class public final Lcom/crittercism/internal/ea;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/crittercism/internal/au;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Lcom/crittercism/internal/dg;

.field d:Lcom/crittercism/internal/dr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/crittercism/internal/au;Ljava/util/concurrent/ExecutorService;Lcom/crittercism/internal/dg;Lcom/crittercism/internal/dr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crittercism/internal/ea;->a:Lcom/crittercism/internal/au;

    iput-object p2, p0, Lcom/crittercism/internal/ea;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/crittercism/internal/ea;->c:Lcom/crittercism/internal/dg;

    iput-object p4, p0, Lcom/crittercism/internal/ea;->d:Lcom/crittercism/internal/dr;

    return-void
.end method
