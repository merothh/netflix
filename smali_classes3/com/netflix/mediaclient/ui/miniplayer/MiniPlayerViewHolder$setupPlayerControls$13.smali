.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nl;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Long;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;->a:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(J)V
    .locals 0

    .line 425
    sget-object p1, Lo/Nl;->d:Lo/Nl$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 55
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerViewHolder$setupPlayerControls$13;->c(J)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
