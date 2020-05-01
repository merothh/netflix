.class final Lo/UQ$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;->e(Lio/reactivex/Observable;)V
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
        "Lo/UU;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/UQ;


# direct methods
.method constructor <init>(Lo/UQ;)V
    .locals 0

    iput-object p1, p0, Lo/UQ$StateListAnimator;->b:Lo/UQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lo/UU;

    invoke-virtual {p0, p1}, Lo/UQ$StateListAnimator;->d(Lo/UU;)V

    return-void
.end method

.method public final d(Lo/UU;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lo/UQ$StateListAnimator;->b:Lo/UQ;

    invoke-static {p1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object p1

    invoke-interface {p1}, Lo/UI;->ah()V

    .line 177
    iget-object p1, p0, Lo/UQ$StateListAnimator;->b:Lo/UQ;

    invoke-static {p1}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object p1

    invoke-interface {p1}, Lo/UI;->af()V

    return-void
.end method
