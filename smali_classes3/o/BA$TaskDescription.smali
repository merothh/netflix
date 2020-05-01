.class final Lo/BA$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BA;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lo/BA;


# direct methods
.method constructor <init>(Lo/BA;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/BA$TaskDescription;->d:Lo/BA;

    iput-object p2, p0, Lo/BA$TaskDescription;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lo/BA$TaskDescription;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lo/BA$TaskDescription;->d:Lo/BA;

    invoke-virtual {v0}, Lo/BA;->b()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->e()Lo/BH;

    move-result-object v0

    iget-object v1, p0, Lo/BA$TaskDescription;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Lo/BH;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method
