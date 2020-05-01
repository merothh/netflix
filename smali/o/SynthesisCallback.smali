.class public final Lo/SynthesisCallback;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lo/InputMethodSession;


# direct methods
.method public constructor <init>(Lo/InputMethodSession;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "formCache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SynthesisCallback;->a:Lo/InputMethodSession;

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;)V"
        }
    .end annotation

    .line 21
    check-cast p2, Ljava/lang/Iterable;

    .line 35
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SynthesisPlaybackQueueItem;

    .line 22
    iget-object v1, p0, Lo/SynthesisCallback;->a:Lo/InputMethodSession;

    invoke-virtual {v0}, Lo/SynthesisPlaybackQueueItem;->getId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lo/InputMethodSession;->d(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/SynthesisPlaybackQueueItem;->setShowValidationState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)V"
        }
    .end annotation

    .line 10
    check-cast p2, Ljava/lang/Iterable;

    .line 33
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    .line 11
    iget-object v1, p0, Lo/SynthesisCallback;->a:Lo/InputMethodSession;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/InputMethodSession;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Lcom/netflix/android/moneyball/fields/Field;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lo/SynthesisCallback;->a:Lo/InputMethodSession;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lo/InputMethodSession;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModels"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupedFields"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p3}, Lo/SynthesisCallback;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lo/SynthesisCallback;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
