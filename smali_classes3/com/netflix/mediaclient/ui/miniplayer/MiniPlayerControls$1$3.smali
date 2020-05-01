.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->c(Lo/Nh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Integer;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;

.field final synthetic e:Lo/Nh;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;Lo/Nh;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;->e:Lo/Nh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Integer;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    const-string v1, "current"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;->e:Lo/Nh;

    invoke-virtual {v1}, Lo/Nh;->m()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;II)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$1$3;->e(Ljava/lang/Integer;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
