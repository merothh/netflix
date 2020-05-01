.class final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;-><init>(Landroid/view/View;Lo/alA;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "TPVM;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;->d:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Nh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPVM;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-object p1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lo/Nh;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$2;->a(Lo/Nh;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
