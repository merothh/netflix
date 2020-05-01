.class Lcom/netflix/falkor/IterableBuilder$4$1;
.super Ljava/lang/Object;
.source "IterableBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/netflix/falkor/IterableBuilder$4;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/IterableBuilder$4;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->this$1:Lcom/netflix/falkor/IterableBuilder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->this$1:Lcom/netflix/falkor/IterableBuilder$4;

    iget-object v0, v0, Lcom/netflix/falkor/IterableBuilder$4;->val$self:Lcom/netflix/falkor/IterableBuilder;

    invoke-virtual {v0}, Lcom/netflix/falkor/IterableBuilder;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->this$1:Lcom/netflix/falkor/IterableBuilder$4;

    iget-object v1, v1, Lcom/netflix/falkor/IterableBuilder$4;->val$onCompletedAction:Lcom/netflix/falkor/Action;

    invoke-interface {v1}, Lcom/netflix/falkor/Action;->call()V

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/IterableBuilder$4$1;->this$1:Lcom/netflix/falkor/IterableBuilder$4;

    iget-object v1, v1, Lcom/netflix/falkor/IterableBuilder$4;->val$onNextAction:Lcom/netflix/falkor/Action1;

    invoke-interface {v1, v0}, Lcom/netflix/falkor/Action1;->call(Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
