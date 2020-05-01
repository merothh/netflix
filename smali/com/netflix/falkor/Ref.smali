.class public Lcom/netflix/falkor/Ref;
.super Ljava/lang/Object;
.source "Ref.java"

# interfaces
.implements Lcom/netflix/falkor/Expires;
.implements Lcom/netflix/falkor/PathBound;
.implements Lcom/netflix/falkor/ReferenceTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "Ref"


# instance fields
.field private expires:Ljava/util/Date;

.field private path:Lcom/netflix/falkor/PQL;

.field private refPath:Lcom/netflix/falkor/PQL;

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

.field private final valueRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/PQL;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    .line 21
    return-void
.end method


# virtual methods
.method public clearValue()V
    .locals 3

    .prologue
    .line 89
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v0, "Ref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing hard ref for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHardValue()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 25
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v2, "Ref"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hard value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string/jumbo v0, "n/a"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-object v1

    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->path:Lcom/netflix/falkor/PQL;

    return-object v0
.end method

.method public getRefPath()Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

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

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->references:Lcom/netflix/falkor/LinkedList;

    return-object v0
.end method

.method public getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v0, "Ref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getValue returned hard ref for path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    :cond_2
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_3

    .line 62
    const-string/jumbo v0, "Ref"

    const-string/jumbo v1, "refPath is empty - getValue() returns null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Lcom/netflix/falkor/ModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    instance-of v0, v1, Lcom/netflix/falkor/ReferenceTarget;

    if-eqz v0, :cond_6

    .line 68
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_5

    .line 69
    const-string/jumbo v0, "Ref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target is capable of storing references, create hard reference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    .line 71
    check-cast v0, Lcom/netflix/falkor/ReferenceTarget;

    .line 72
    new-instance v2, Lcom/netflix/falkor/LinkedList;

    invoke-interface {v0}, Lcom/netflix/falkor/ReferenceTarget;->getReferences()Lcom/netflix/falkor/LinkedList;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/netflix/falkor/LinkedList;-><init>(Ljava/lang/Object;Lcom/netflix/falkor/LinkedList;)V

    invoke-interface {v0, v2}, Lcom/netflix/falkor/ReferenceTarget;->setReferences(Lcom/netflix/falkor/LinkedList;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v2, "Ref"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Target CANNOT store references, got value for path: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_7

    const-string/jumbo v0, "n/a"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method

.method public setExpires(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->expires:Ljava/util/Date;

    .line 124
    return-void
.end method

.method public setPath(Lcom/netflix/falkor/PQL;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->path:Lcom/netflix/falkor/PQL;

    .line 103
    return-void
.end method

.method public setRefPath(Lcom/netflix/falkor/PQL;)V
    .locals 3

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    invoke-virtual {p1, v0}, Lcom/netflix/falkor/PQL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-boolean v0, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 44
    const-string/jumbo v0, "Ref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting ref path to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->refPath:Lcom/netflix/falkor/PQL;

    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/Ref;->valueRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
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
    .line 112
    iput-object p1, p0, Lcom/netflix/falkor/Ref;->references:Lcom/netflix/falkor/LinkedList;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    const-string/jumbo v0, "Ref path: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
