.class public Lcom/netflix/model/branches/SummarizedList;
.super Lcom/netflix/falkor/BranchMap;
.source "SummarizedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/netflix/falkor/BranchMap",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private expires:Ljava/util/Date;

.field private final listSummaryCreator:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private references:Lcom/netflix/falkor/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<TT;>;",
            "Lcom/netflix/falkor/Func",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    .line 18
    iput-object p2, p0, Lcom/netflix/model/branches/SummarizedList;->listSummaryCreator:Lcom/netflix/falkor/Func;

    .line 19
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lcom/netflix/falkor/BranchMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 74
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->listSummaryCreator:Lcom/netflix/falkor/Func;

    invoke-interface {v0}, Lcom/netflix/falkor/Func;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferences()Lcom/netflix/falkor/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public getSummary()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p2, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/BranchMap;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->expires:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public setReferences(Lcom/netflix/falkor/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/LinkedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->references:Lcom/netflix/falkor/LinkedList;

    .line 37
    return-void
.end method

.method public setSummary(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netflix/model/branches/SummarizedList;->summary:Ljava/lang/Object;

    .line 27
    return-void
.end method
