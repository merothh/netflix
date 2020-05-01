.class final Lo/UQ$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;-><init>(Lo/UI;Lio/reactivex/Observable;Lo/UK;Lio/reactivex/Observable;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Lo/UU;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/UQ;


# direct methods
.method constructor <init>(Lo/UQ;)V
    .locals 0

    iput-object p1, p0, Lo/UQ$PendingIntent;->e:Lo/UQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/UU;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lo/UQ$PendingIntent;->e:Lo/UQ;

    invoke-static {p1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object p1

    invoke-interface {p1}, Lo/UI;->ae()Lo/AK;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/UQ$PendingIntent;->e:Lo/UQ;

    invoke-static {p1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object p1

    invoke-interface {p1}, Lo/UI;->J()Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerLiteMode;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lo/UQ$PendingIntent;->b(Lo/UU;)Z

    move-result p1

    return p1
.end method
