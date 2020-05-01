.class final Lo/VE$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VE$Activity;->e(Ljava/util/Map$Entry;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lcom/netflix/model/leafs/advisory/Advisory;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/VE$Activity;


# direct methods
.method constructor <init>(Lo/VE$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/VE$Activity$3;->d:Lo/VE$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lo/VE$Activity$3;->e(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final e(Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lo/VE$Activity$3;->d:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v0}, Lo/VE;->a(Lo/VE;)Lo/Wu;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    iget-object v2, p0, Lo/VE$Activity$3;->d:Lo/VE$Activity;

    iget-object v2, v2, Lo/VE$Activity;->e:Lo/VE;

    invoke-static {v2}, Lo/VE;->b(Lo/VE;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lo/Wu;->d(ZLjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lo/VE$Activity$3;->d:Lo/VE$Activity;

    iget-object v0, v0, Lo/VE$Activity;->e:Lo/VE;

    invoke-virtual {v0}, Lo/VE;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
