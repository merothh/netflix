.class final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;-><init>(Landroid/view/View;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/HY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;->a:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/HY;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->c:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lo/HY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$2;->c(Lo/HY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
