.class public final Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HD;->x()Lo/HC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/HC;


# direct methods
.method public constructor <init>(Lo/HC;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;->c:Lo/HC;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/GY;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;->c:Lo/HC;

    invoke-virtual {v0}, Lo/HC;->b()Lo/ListView;

    move-result-object v0

    if-eqz p1, :cond_0

    check-cast p1, Lo/GY$Fragment;

    invoke-virtual {p1}, Lo/GY$Fragment;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/ListView;->setChecked(Z)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.extras.events.ExtrasEvent.RemindMeUpdated"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$createNewHolder$1$2;->c(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
