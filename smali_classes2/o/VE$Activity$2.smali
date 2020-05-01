.class final Lo/VE$Activity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


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
        "Lio/reactivex/functions/Predicate<",
        "Ljava/util/Map$Entry<",
        "+",
        "Lcom/netflix/model/leafs/advisory/Advisory;",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VE$Activity;


# direct methods
.method constructor <init>(Lo/VE$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/VE$Activity$2;->e:Lo/VE$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lo/VE$Activity$2;->e:Lo/VE$Activity;

    iget-object p1, p1, Lo/VE$Activity;->e:Lo/VE;

    invoke-virtual {p1}, Lo/VE;->d()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lo/VE$Activity$2;->b(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
