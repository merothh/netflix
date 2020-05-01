.class public abstract Lo/QR;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QR$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/QR$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field public b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/QR$Activity;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lo/QR$Activity;->c()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/QR;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    const-string v2, "text"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p1}, Lo/QR$Activity;->c()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/QR;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 17
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aA:I

    return v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lo/QR;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 13
    check-cast p1, Lo/QR$Activity;

    invoke-virtual {p0, p1}, Lo/QR;->a(Lo/QR$Activity;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lo/QR$Activity;

    invoke-virtual {p0, p1}, Lo/QR;->a(Lo/QR$Activity;)V

    return-void
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/QR;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method
