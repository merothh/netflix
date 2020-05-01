.class final Lo/afk$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/afk;


# direct methods
.method constructor <init>(Lo/afk;)V
    .locals 0

    iput-object p1, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1}, Lo/afk;->d(Lo/afk;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    iget-object v1, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1}, Lo/afk;->d(Lo/afk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 599
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "result"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/afk$TaskDescription;

    .line 600
    iget-object v3, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/afk;->e(Lo/afk;Lo/afk$TaskDescription;)V

    goto :goto_0

    .line 602
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1}, Lo/afk;->a(Lo/afk;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    iget-object v1, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1}, Lo/afk;->a(Lo/afk;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 604
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/afk$Application;

    .line 605
    iget-object v3, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lo/afk;->d(Lo/afk;Lo/afk$Application;)V

    goto :goto_1

    .line 607
    :cond_1
    iget-object v0, p0, Lo/afk$PendingIntent;->d:Lo/afk;

    const/4 v1, 0x0

    check-cast v1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1}, Lo/afk;->d(Lo/afk;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
