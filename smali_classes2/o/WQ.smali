.class public final Lo/WQ;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wv;


# instance fields
.field private b:Z

.field private final d:Landroid/widget/ImageView;

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 10
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ec:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/WQ;->d:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p0}, Lo/WQ;->f()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    iput p1, p0, Lo/WQ;->e:I

    .line 23
    invoke-virtual {p0}, Lo/WQ;->f()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lo/WQ$2;

    invoke-direct {v0, p0}, Lo/WQ$2;-><init>(Lo/WQ;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 11
    iget v0, p0, Lo/WQ;->e:I

    return v0
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 33
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lo/WQ;->f()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .line 16
    iput-boolean p1, p0, Lo/WQ;->b:Z

    .line 17
    invoke-virtual {p0}, Lo/WQ;->f()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 18
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ar:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->an:I

    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public e()V
    .locals 9

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 29
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public f()Landroid/widget/ImageView;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/WQ;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lo/WQ;->b:Z

    return v0
.end method
