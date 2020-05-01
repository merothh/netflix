.class final Lo/Do$Fragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do$Fragment;->run(Lo/Am;)V
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
        "Lo/FC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Do$Fragment;


# direct methods
.method constructor <init>(Lo/Do$Fragment;)V
    .locals 0

    iput-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lo/Do$Fragment$5;->c(Lo/FC;)V

    return-void
.end method

.method public final c(Lo/FC;)V
    .locals 13

    .line 309
    instance-of v0, p1, Lo/FC$Dialog;

    if-eqz v0, :cond_3

    .line 310
    check-cast p1, Lo/FC$Dialog;

    invoke-virtual {p1}, Lo/FC$Dialog;->c()Lo/AS;

    move-result-object v0

    .line 311
    invoke-virtual {p1}, Lo/FC$Dialog;->d()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 314
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/AS;->X()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto/16 :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    iget-object v1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v1, v1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-interface {v0}, Lo/AS;->X()I

    move-result v2

    invoke-static {v1, v2}, Lo/Do;->d(Lo/Do;I)I

    move-result v1

    invoke-static {p1, v1}, Lo/Do;->a(Lo/Do;I)V

    .line 324
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    iget-object v1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v1, v1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v1}, Lo/Do;->d(Lo/Do;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lo/Do;->b(Lo/Do;Ljava/lang/Integer;)V

    .line 325
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-interface {v0}, Lo/AS;->V()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lo/Do;->a(Lo/Do;Ljava/lang/Integer;)V

    .line 328
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object p1

    .line 329
    const-class v1, Lo/FH;

    .line 330
    new-instance v10, Lo/FH$StateListAnimator;

    .line 331
    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->i:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const-string v3, "PlayContextImp.IN_PLAYER_EPISODES_CONTEXT"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/PlayContext;->getTrackId()I

    move-result v3

    .line 332
    iget-object v2, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v2, v2, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v2}, Lo/Do;->m(Lo/Do;)J

    move-result-wide v4

    .line 333
    iget-object v2, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v2, v2, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v2}, Lo/Do;->j(Lo/Do;)Ljava/lang/String;

    move-result-object v6

    .line 334
    iget-object v2, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v2, v2, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v2}, Lo/Do;->d(Lo/Do;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 335
    iget-object v2, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v2, v2, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v2}, Lo/Do;->o(Lo/Do;)Ljava/lang/Integer;

    move-result-object v8

    .line 336
    invoke-interface {v0}, Lo/AS;->p()I

    move-result v0

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v2, v10

    .line 330
    invoke-direct/range {v2 .. v9}, Lo/FH$StateListAnimator;-><init>(IJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    check-cast v10, Lo/VintfObject;

    .line 328
    invoke-virtual {p1, v1, v10}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 340
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->d(Lo/Do;)I

    move-result p1

    if-gez p1, :cond_1

    .line 341
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->h(Lo/Do;)V

    goto :goto_1

    .line 343
    :cond_1
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    iget-object v0, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v0, v0, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v0}, Lo/Do;->d(Lo/Do;)I

    move-result v0

    invoke-static {p1, v0}, Lo/Do;->c(Lo/Do;I)V

    .line 344
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->e(Lo/Do;)Lo/UpdateEngine;

    move-result-object p1

    .line 345
    const-class v0, Lo/DC;

    .line 346
    new-instance v1, Lo/DC$Dialog;

    .line 347
    iget-object v2, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object v2, v2, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {v2}, Lo/Do;->d(Lo/Do;)I

    move-result v2

    .line 346
    invoke-direct {v1, v2}, Lo/DC$Dialog;-><init>(I)V

    check-cast v1, Lo/VintfObject;

    .line 344
    invoke-virtual {p1, v0, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    goto :goto_1

    .line 316
    :cond_2
    :goto_0
    iget-object p1, p0, Lo/Do$Fragment$5;->b:Lo/Do$Fragment;

    iget-object p1, p1, Lo/Do$Fragment;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->h(Lo/Do;)V

    :cond_3
    :goto_1
    return-void
.end method
