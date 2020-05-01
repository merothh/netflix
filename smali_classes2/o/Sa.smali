.class public abstract Lo/Sa;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sa$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sa$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 17
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aH:I

    return v0
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 12
    check-cast p1, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sa;->d(Lo/Sa$ActionBar;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lo/Sa$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sa;->d(Lo/Sa$ActionBar;)V

    return-void
.end method

.method public d(Lo/Sa$ActionBar;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lo/Sa$ActionBar;->d()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/Sa;->b:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v1, "text"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
