.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


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
        "Lo/alN<",
        "Lo/Yn;",
        "Lo/Ab;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Yo;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/Yo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->a:Lo/Yo;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Yn;Lo/Ab;)V
    .locals 12

    const-string v0, "currPreviewItem"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoViewGroup"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->a:Lo/Yo;

    invoke-static {v0}, Lo/Yo;->e(Lo/Yo;)Lo/XY;

    move-result-object v1

    .line 392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 393
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->d:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lo/Yn;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    const-string v0, "currPreviewItem.type"

    invoke-static {v6, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lo/Yo;->b()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    move-result-object v7

    .line 396
    invoke-virtual {p1}, Lo/Yn;->f()Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 397
    new-instance v9, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    const-string p1, "-1"

    const-wide/16 v10, 0x0

    invoke-direct {v9, p1, p1, v10, v11}, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v4, p2

    .line 391
    invoke-virtual/range {v1 .. v11}, Lo/XY;->b(JLo/Ab;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;ZLjava/lang/String;)Z

    move-result p1

    .line 400
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->a:Lo/Yo;

    if-eqz p1, :cond_0

    const-string p1, "video playback started"

    goto :goto_0

    :cond_0
    const-string p1, "video playback failed to start"

    :goto_0
    invoke-virtual {p2, p1}, Lo/Yo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lo/Yn;

    check-cast p2, Lo/Ab;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/previews/PreviewsPlayerItemViewHolder$onViewFullyVisible$6;->a(Lo/Yn;Lo/Ab;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
