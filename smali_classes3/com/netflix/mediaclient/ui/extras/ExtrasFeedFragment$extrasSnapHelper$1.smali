.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GX;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/GX;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->a(Lo/GX;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lo/GX;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$extrasSnapHelper$1;->c(Lo/GX;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
