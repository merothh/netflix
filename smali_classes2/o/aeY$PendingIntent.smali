.class final Lo/aeY$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/aeY;


# direct methods
.method constructor <init>(Lo/aeY;)V
    .locals 0

    iput-object p1, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1}, Lo/aeY;->c(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    iget-object v1, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1}, Lo/aeY;->c(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 609
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "result"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeY$ActionBar;

    .line 610
    iget-object v3, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/aeY;->b(Lo/aeY;Lo/aeY$ActionBar;)V

    goto :goto_0

    .line 612
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1}, Lo/aeY;->e(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 613
    iget-object v1, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1}, Lo/aeY;->e(Lo/aeY;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/aeY$TaskDescription;

    .line 615
    iget-object v3, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/aeY;->b(Lo/aeY;Lo/aeY$TaskDescription;)V

    goto :goto_1

    .line 617
    :cond_1
    iget-object v0, p0, Lo/aeY$PendingIntent;->c:Lo/aeY;

    const/4 v1, 0x0

    check-cast v1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lo/aeY;->d(Lo/aeY;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
