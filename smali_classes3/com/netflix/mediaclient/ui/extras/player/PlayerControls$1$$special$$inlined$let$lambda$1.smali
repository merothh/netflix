.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->a(Lo/HY;)V
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
.field final synthetic a:Lo/AK;

.field final synthetic d:Lo/HY;

.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;


# direct methods
.method constructor <init>(Lo/AK;Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;Lo/HY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->a:Lo/AK;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->d:Lo/HY;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Integer;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->e:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    const-string v1, "current"

    .line 319
    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 320
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->a:Lo/AK;

    invoke-interface {v1}, Lo/AK;->S()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 318
    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;II)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$1$$special$$inlined$let$lambda$1;->b(Ljava/lang/Integer;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
