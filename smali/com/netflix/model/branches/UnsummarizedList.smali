.class public Lcom/netflix/model/branches/UnsummarizedList;
.super Lcom/netflix/falkor/BranchMap;
.source "UnsummarizedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/falkor/BranchMap",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private expires:Ljava/util/Date;

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


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/branches/UnsummarizedList;->expires:Ljava/util/Date;

    return-object v0
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

    iget-object v0, p0, Lcom/netflix/model/branches/UnsummarizedList;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/model/branches/UnsummarizedList;->expires:Ljava/util/Date;

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

    iput-object p1, p0, Lcom/netflix/model/branches/UnsummarizedList;->references:Lcom/netflix/falkor/LinkedList;

    return-void
.end method
