.class public Lcom/netflix/falkor/CachedPathEvaluator;
.super Lcom/netflix/falkor/BasePathEvaluator;
.source "CachedPathEvaluator.java"


# static fields
.field private static stripMissingMemberSentinel:Lcom/netflix/falkor/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func1",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cache:Lcom/netflix/falkor/AbstractPathEvaluator;

.field source:Lcom/netflix/falkor/AbstractPathEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/falkor/CachedPathEvaluator$1;

    invoke-direct {v0}, Lcom/netflix/falkor/CachedPathEvaluator$1;-><init>()V

    sput-object v0, Lcom/netflix/falkor/CachedPathEvaluator;->stripMissingMemberSentinel:Lcom/netflix/falkor/Func1;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/AbstractPathEvaluator;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/falkor/BasePathEvaluator;-><init>()V

    iput-object p1, p0, Lcom/netflix/falkor/CachedPathEvaluator;->source:Lcom/netflix/falkor/AbstractPathEvaluator;

    iput-object p2, p0, Lcom/netflix/falkor/CachedPathEvaluator;->cache:Lcom/netflix/falkor/AbstractPathEvaluator;

    return-void
.end method

.method static synthetic access$000()Lcom/netflix/falkor/Func1;
    .locals 1

    sget-object v0, Lcom/netflix/falkor/CachedPathEvaluator;->stripMissingMemberSentinel:Lcom/netflix/falkor/Func1;

    return-object v0
.end method


# virtual methods
.method public getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/netflix/falkor/CachedPathEvaluator$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/falkor/CachedPathEvaluator$2;-><init>(Lcom/netflix/falkor/CachedPathEvaluator;Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/netflix/falkor/IterableBuilder;->defer(Lcom/netflix/falkor/Func;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 0

    return-object p0
.end method

.method public setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
