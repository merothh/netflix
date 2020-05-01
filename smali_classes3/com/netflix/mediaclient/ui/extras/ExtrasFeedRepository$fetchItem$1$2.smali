.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GI$Activity;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/hW;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic e:Lo/GI$Activity;


# direct methods
.method public constructor <init>(Lo/GI$Activity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->e:Lo/GI$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->a:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/hW;)V
    .locals 4

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2$Activity;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;)V

    .line 188
    sget-object v1, Lo/KeymasterBlobArgument;->b:Lo/KeymasterBlobArgument$StateListAnimator;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->e:Lo/GI$Activity;

    iget-object v2, v2, Lo/GI$Activity;->b:Ljava/lang/String;

    const-string v3, "browseManager"

    invoke-static {p1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ci;

    invoke-virtual {v1, v2, p1, v0}, Lo/KeymasterBlobArgument$StateListAnimator;->a(Ljava/lang/String;Lo/hW;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchItem$1$2;->c(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
