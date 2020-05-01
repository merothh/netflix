.class public Lcom/netflix/falkor/BoundPathEvaluator;
.super Lcom/netflix/falkor/BasePathEvaluator;
.source "BoundPathEvaluator.java"


# instance fields
.field root:Lcom/netflix/falkor/AbstractPathEvaluator;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/AbstractPathEvaluator;Lcom/netflix/falkor/PQL;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/falkor/BasePathEvaluator;-><init>()V

    iput-object p1, p0, Lcom/netflix/falkor/BoundPathEvaluator;->root:Lcom/netflix/falkor/AbstractPathEvaluator;

    invoke-virtual {p0, p2}, Lcom/netflix/falkor/BoundPathEvaluator;->setPath(Lcom/netflix/falkor/PQL;)V

    return-void
.end method


# virtual methods
.method public deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
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

    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$3;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
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

    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$1;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/BoundPathEvaluator;->root:Lcom/netflix/falkor/AbstractPathEvaluator;

    return-object v0
.end method

.method public setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
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

    new-instance v0, Lcom/netflix/falkor/IterableBuilder;

    invoke-direct {v0, p1}, Lcom/netflix/falkor/IterableBuilder;-><init>(Ljava/lang/Iterable;)V

    new-instance v1, Lcom/netflix/falkor/BoundPathEvaluator$2;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/BoundPathEvaluator$2;-><init>(Lcom/netflix/falkor/BoundPathEvaluator;)V

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/IterableBuilder;->map(Lcom/netflix/falkor/Func1;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/BoundPathEvaluator;->setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
