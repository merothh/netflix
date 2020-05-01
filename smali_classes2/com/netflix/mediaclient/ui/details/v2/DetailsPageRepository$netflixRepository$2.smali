.class public final Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FI;-><init>(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/bs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lio/reactivex/Observable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;->e:Lio/reactivex/Observable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lo/bs;
    .locals 2

    .line 102
    sget-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    .line 103
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;->e:Lio/reactivex/Observable;

    .line 102
    invoke-virtual {v0, v1}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/v2/DetailsPageRepository$netflixRepository$2;->a()Lo/bs;

    move-result-object v0

    return-object v0
.end method
