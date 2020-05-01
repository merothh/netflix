.class final Lo/VJ$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VJ;-><init>(Lo/Wx;Lio/reactivex/Observable;Lio/reactivex/Observable;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/UP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/VJ;


# direct methods
.method constructor <init>(Lo/VJ;)V
    .locals 0

    iput-object p1, p0, Lo/VJ$3;->e:Lo/VJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/UP;

    invoke-virtual {p0, p1}, Lo/VJ$3;->b(Lo/UP;)V

    return-void
.end method

.method public final b(Lo/UP;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lo/VJ$3;->e:Lo/VJ;

    invoke-static {p1}, Lo/VJ;->e(Lo/VJ;)Lo/Wx;

    move-result-object p1

    invoke-interface {p1}, Lo/Wx;->e()V

    return-void
.end method
