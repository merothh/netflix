.class public final Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UK;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Lio/reactivex/ObservableSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Zx$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/UK;

.field final synthetic b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Ljava/lang/String;

.field final synthetic g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field final synthetic j:I


# direct methods
.method public constructor <init>(Lo/UK;Lcom/netflix/mediaclient/browse/api/task/TaskMode;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->a:Lo/UK;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput p6, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->j:I

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Zx$TaskDescription;)V
    .locals 7

    .line 136
    invoke-virtual {p1}, Lo/Zx$TaskDescription;->a()Lo/Bc;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    sget-object v2, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->b:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lo/Zx$TaskDescription;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "details.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    new-instance v1, Lo/Vb;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {v1, v0, v2, v3}, Lo/Vb;-><init>(Lo/Bc;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    move-object v0, v1

    check-cast v0, Lo/Bc;

    :cond_1
    move-object v2, v0

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->a:Lo/UK;

    invoke-virtual {p1}, Lo/Zx$TaskDescription;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget v5, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->j:I

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->g:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-static/range {v1 .. v6}, Lo/UK;->c(Lo/UK;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/Zx$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$3;->a(Lo/Zx$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
