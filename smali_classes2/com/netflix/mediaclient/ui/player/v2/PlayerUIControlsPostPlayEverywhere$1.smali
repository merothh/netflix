.class public final Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UT;-><init>(Lo/MenuInflater;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/UP;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/UT;


# direct methods
.method public constructor <init>(Lo/UT;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;->e:Lo/UT;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/UP;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v0, p1, Lo/UP$SharedElementCallback;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;->e:Lo/UT;

    check-cast p1, Lo/UP$SharedElementCallback;

    invoke-virtual {p1}, Lo/UP$SharedElementCallback;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/UT;->c(Z)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/v2/PlayerUIControlsPostPlayEverywhere$1;->e(Lo/UP;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
