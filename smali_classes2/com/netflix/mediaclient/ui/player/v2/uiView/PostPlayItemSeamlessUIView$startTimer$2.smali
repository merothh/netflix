.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xr;->q()V
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


# instance fields
.field final synthetic b:Lo/Xr;


# direct methods
.method public constructor <init>(Lo/Xr;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;->b:Lo/Xr;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Long;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;->b:Lo/Xr;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/Xr;->a(Lo/Xr;J)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemSeamlessUIView$startTimer$2;->b(Ljava/lang/Long;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
