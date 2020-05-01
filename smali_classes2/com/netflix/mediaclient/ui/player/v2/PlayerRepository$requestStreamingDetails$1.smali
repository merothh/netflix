.class public final Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;
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
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic d:Lo/UK;


# direct methods
.method public constructor <init>(Lo/UK;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->d:Lo/UK;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput p3, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->a:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Zx$TaskDescription;)V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->d:Lo/UK;

    invoke-virtual {p1}, Lo/Zx$TaskDescription;->a()Lo/Bc;

    move-result-object v1

    invoke-virtual {p1}, Lo/Zx$TaskDescription;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->a:I

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->b:Lcom/netflix/mediaclient/ui/player/PlayerExtras;

    invoke-static/range {v0 .. v5}, Lo/UK;->c(Lo/UK;Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/PlayContext;ILcom/netflix/mediaclient/ui/player/PlayerExtras;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lo/Zx$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/PlayerRepository$requestStreamingDetails$1;->c(Lo/Zx$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
