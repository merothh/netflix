.class public final Lcom/netflix/arch/EventBusFactory$observer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassCircularityError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UpdateEngine;-><init>(Lo/UnicodeScript;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/UpdateEngine;


# direct methods
.method public constructor <init>(Lo/UpdateEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/netflix/arch/EventBusFactory$observer$1;->e:Lo/UpdateEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2
    .annotation runtime Lo/Double;
        c = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/netflix/arch/EventBusFactory$observer$1;->e:Lo/UpdateEngine;

    invoke-virtual {v0}, Lo/UpdateEngine;->b()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/Subject;

    invoke-virtual {v1}, Lio/reactivex/subjects/Subject;->onComplete()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lo/UpdateEngine;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/arch/EventBusFactory$observer$1;->e:Lo/UpdateEngine;

    invoke-static {v1}, Lo/UpdateEngine;->b(Lo/UpdateEngine;)Lo/UnicodeScript;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
