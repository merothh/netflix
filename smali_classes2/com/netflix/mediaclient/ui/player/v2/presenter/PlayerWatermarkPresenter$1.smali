.class public final Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VY;-><init>(Lo/WM;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/VY;


# direct methods
.method public constructor <init>(Lo/VY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;->c:Lo/VY;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/UP;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lo/UP$CursorFactory;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lo/UP$CursorFactory;

    invoke-virtual {p1}, Lo/UP$CursorFactory;->e()Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/videoview/NetflixVideoView;->ae()Lcom/netflix/mediaclient/media/Watermark;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;->c:Lo/VY;

    invoke-static {v0}, Lo/VY;->b(Lo/VY;)Lo/WM;

    move-result-object v0

    invoke-interface {v0}, Lo/WM;->e()V

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;->c:Lo/VY;

    invoke-static {v0}, Lo/VY;->b(Lo/VY;)Lo/WM;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "watermark.identifier"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/WM;->a(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;->c:Lo/VY;

    invoke-static {v0}, Lo/VY;->b(Lo/VY;)Lo/WM;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Watermark;->getOpacity()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Lo/WM;->e(F)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/presenter/PlayerWatermarkPresenter$1;->a(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
