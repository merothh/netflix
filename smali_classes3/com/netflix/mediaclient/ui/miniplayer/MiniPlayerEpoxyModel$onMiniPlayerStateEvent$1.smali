.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Nf;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Nj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Nf;


# direct methods
.method public constructor <init>(Lo/Nf;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;->c:Lo/Nf;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/Nj;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;->c:Lo/Nf;

    invoke-virtual {v0}, Lo/Nf;->o()Lo/Nh;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 48
    instance-of v1, p1, Lo/Nj$Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1}, Lo/Nj;->d()I

    move-result v1

    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v4

    if-ne v1, v4, :cond_0

    check-cast p1, Lo/Nj$Activity;

    invoke-virtual {p1}, Lo/Nj$Activity;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 51
    invoke-virtual {v0, v2}, Lo/Nh;->c(Z)V

    goto/16 :goto_0

    .line 53
    :cond_0
    sget-object p1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 54
    invoke-virtual {v0, v3}, Lo/Nh;->c(Z)V

    goto :goto_0

    .line 58
    :cond_1
    instance-of v1, p1, Lo/Nj$TaskDescription;

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p1}, Lo/Nj;->d()I

    move-result p1

    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 60
    sget-object p1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 61
    invoke-virtual {v0, v2}, Lo/Nh;->b(Z)V

    goto :goto_0

    .line 63
    :cond_2
    sget-object p1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 64
    invoke-virtual {v0, v3}, Lo/Nh;->b(Z)V

    goto :goto_0

    .line 68
    :cond_3
    instance-of v1, p1, Lo/Nj$Application;

    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {p1}, Lo/Nj;->d()I

    move-result v1

    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 70
    sget-object v1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 71
    check-cast p1, Lo/Nj$Application;

    invoke-virtual {p1}, Lo/Nj$Application;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/Nh;->d(Z)V

    goto :goto_0

    .line 75
    :cond_4
    instance-of v1, p1, Lo/Nj$StateListAnimator;

    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {p1}, Lo/Nj;->d()I

    move-result p1

    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 77
    sget-object p1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast p1, Lo/MessagePdu;

    goto :goto_0

    .line 81
    :cond_5
    instance-of v1, p1, Lo/Nj$PendingIntent;

    if-eqz v1, :cond_6

    .line 82
    invoke-virtual {p1}, Lo/Nj;->d()I

    move-result v1

    invoke-virtual {v0}, Lo/Nh;->f()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 83
    sget-object v1, Lo/Nf;->c:Lo/Nf$Activity;

    check-cast v1, Lo/MessagePdu;

    .line 84
    check-cast p1, Lo/Nj$PendingIntent;

    invoke-virtual {p1}, Lo/Nj$PendingIntent;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/Nh;->e(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lo/Nj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerEpoxyModel$onMiniPlayerStateEvent$1;->e(Lo/Nj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
