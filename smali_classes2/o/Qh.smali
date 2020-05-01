.class public abstract Lo/Qh;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qh$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Qh$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private c:Lo/Tf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/Qh;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->an:I

    return v0
.end method

.method public b(Lo/Qh$Activity;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lo/Qh$Activity;->e()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Qh;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Qh$Activity;

    invoke-virtual {p0, p1}, Lo/Qh;->b(Lo/Qh$Activity;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/Qh$Activity;

    invoke-virtual {p0, p1}, Lo/Qh;->b(Lo/Qh$Activity;)V

    return-void
.end method

.method public final d(Lo/Tf;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/Qh;->c:Lo/Tf;

    return-void
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Qh;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final o()Lo/Tf;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Qh;->c:Lo/Tf;

    return-object v0
.end method
