.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xw;->h()V
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
.field final synthetic e:Lo/Xw;


# direct methods
.method public constructor <init>(Lo/Xw;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;->e:Lo/Xw;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Long;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;->e:Lo/Xw;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lo/Xw;->b(I)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PostPlayItemTwoUpUIView$startTimer$2;->c(Ljava/lang/Long;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
