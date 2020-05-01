.class Lo/sz$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/sz;


# direct methods
.method constructor <init>(Lo/sz;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lo/sz$6;->a:Lo/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/sz$6;->a:Lo/sz;

    invoke-static {v1}, Lo/sz;->h(Lo/sz;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 713
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 714
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lo/sz$6;->a:Lo/sz;

    invoke-static {v2}, Lo/sz;->j(Lo/sz;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 719
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 721
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/sE;

    .line 723
    invoke-interface {v3}, Lo/sE;->Q()Z

    move-result v4

    if-nez v4, :cond_1

    if-ge v2, v1, :cond_0

    .line 724
    :cond_1
    iget-object v4, p0, Lo/sz$6;->a:Lo/sz;

    invoke-static {v4, v3}, Lo/sz;->a(Lo/sz;Lo/sE;)V

    .line 725
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_2
    iget-object v0, p0, Lo/sz$6;->a:Lo/sz;

    invoke-static {v0}, Lo/sz;->a(Lo/sz;)Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lo/sz$6;->a:Lo/sz;

    invoke-static {v0}, Lo/sz;->c(Lo/sz;)Lo/sJ;

    move-result-object v0

    invoke-static {}, Lo/sB;->ak()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/sJ;->c(J)I

    :cond_3
    return-void
.end method
