.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GI$StateListAnimator;->subscribe(Lio/reactivex/ObservableEmitter;)V
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
.field final synthetic d:Lo/GI$StateListAnimator;

.field final synthetic e:Lio/reactivex/ObservableEmitter;


# direct methods
.method public constructor <init>(Lo/GI$StateListAnimator;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->e:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/hW;)V
    .locals 7

    .line 59
    new-instance v6, Lo/KeymasterIntArgument;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget v1, v0, Lo/GI$StateListAnimator;->e:I

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget v2, v0, Lo/GI$StateListAnimator;->b:I

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget-object v3, v0, Lo/GI$StateListAnimator;->a:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget-boolean v4, v0, Lo/GI$StateListAnimator;->c:Z

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->d:Lo/GI$StateListAnimator;

    iget-boolean v5, v0, Lo/GI$StateListAnimator;->h:Z

    move-object v0, v6

    .line 59
    invoke-direct/range {v0 .. v5}, Lo/KeymasterIntArgument;-><init>(IILjava/lang/String;ZZ)V

    check-cast v6, Lo/SettingsValidators;

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2$1;-><init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;)V

    check-cast v0, Lo/ci;

    .line 58
    invoke-interface {p1, v6, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lo/hW;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedRepository$fetchFeed$1$2;->c(Lo/hW;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
