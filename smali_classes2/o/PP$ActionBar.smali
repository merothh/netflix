.class final Lo/PP$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PP;->a(Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V
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
        "Ljava/util/List<",
        "+",
        "Lo/Ph;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lo/PP;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lo/PP;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;)V
    .locals 0

    iput-object p1, p0, Lo/PP$ActionBar;->c:Ljava/util/List;

    iput-object p2, p0, Lo/PP$ActionBar;->e:Ljava/util/List;

    iput-object p3, p0, Lo/PP$ActionBar;->d:Lo/PP;

    iput-object p4, p0, Lo/PP$ActionBar;->a:Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/PP$ActionBar;->e(Ljava/util/List;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Ph;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events"

    .line 74
    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 75
    const-class v0, Lo/Ph$LoaderManager;

    invoke-static {p1, v0}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 123
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    check-cast v1, Lo/Ph$LoaderManager;

    .line 76
    invoke-virtual {v1}, Lo/Ph$LoaderManager;->a()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 78
    iget-object p1, p0, Lo/PP$ActionBar;->d:Lo/PP;

    invoke-static {p1}, Lo/PP;->c(Lo/PP;)Lo/Pr;

    move-result-object p1

    .line 79
    sget-object v1, Lo/PI;->e:Lo/PI$Application;

    .line 80
    iget-object v2, p0, Lo/PP$ActionBar;->a:Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;

    .line 81
    iget-object v3, p0, Lo/PP$ActionBar;->c:Ljava/util/List;

    .line 83
    iget-object v4, p0, Lo/PP$ActionBar;->e:Ljava/util/List;

    .line 79
    invoke-static {v1, v2, v3, v0, v4}, Lo/PR;->c(Lo/PI$Application;Lcom/netflix/model/leafs/social/multititle/NotificationTemplate;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lo/PI;

    move-result-object v0

    .line 78
    invoke-interface {p1, v0}, Lo/Pr;->a(Lo/PI;)V

    return-void
.end method
