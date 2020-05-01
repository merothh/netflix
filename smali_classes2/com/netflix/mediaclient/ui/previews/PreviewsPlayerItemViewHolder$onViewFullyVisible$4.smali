.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yo;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Yo;


# direct methods
.method public constructor <init>(Lo/Yo;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 10

    .line 376
    instance-of v0, p1, Lo/XY$StateListAnimator;

    const-string v1, "playbackError"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    invoke-static {v0}, Lo/Yo;->b(Lo/Yo;)I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 377
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lo/Yo;->a(Lo/Yo;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry on playback error - ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Yo;->a(Ljava/lang/String;)V

    .line 379
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    invoke-static {p1}, Lo/Yo;->b(Lo/Yo;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lo/Yo;->d(Lo/Yo;I)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    invoke-static {v0, v2}, Lo/Yo;->a(Lo/Yo;Z)V

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    invoke-static {v0}, Lo/Yo;->g(Lo/Yo;)Lo/UpdateLock;

    move-result-object v0

    new-instance v2, Lo/YB$Dialog;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->b:Lo/Yo;

    invoke-virtual {v3}, Lo/Yo;->getAdapterPosition()I

    move-result v3

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Lo/YB$Dialog;-><init>(ILcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    invoke-interface {v0, v2}, Lo/UpdateLock;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$4;->d(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
