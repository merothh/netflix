.class public final Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wn;-><init>(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Wn$Activity;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/Wn;


# direct methods
.method public constructor <init>(Lo/Wn;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;->e:Lo/Wn;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/Wn$Activity;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;->e:Lo/Wn;

    invoke-static {v0}, Lo/Wn;->a(Lo/Wn;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lo/Wn$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/repository/PreplayRepository$1;->a(Lo/Wn$Activity;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
