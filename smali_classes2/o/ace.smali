.class public abstract Lo/ace;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ace$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/ace$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dy:I

    return v0
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/ace;->c(Lo/ace$TaskDescription;)V

    return-void
.end method

.method public c(Lo/ace$TaskDescription;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lo/ace$TaskDescription;->a()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/ace;->c:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const-string v1, "confirmClickListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/ace$TaskDescription;

    invoke-virtual {p0, p1}, Lo/ace;->c(Lo/ace$TaskDescription;)V

    return-void
.end method
