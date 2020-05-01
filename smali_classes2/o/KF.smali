.class public Lo/KF;
.super Lo/KI;
.source ""


# instance fields
.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/PooledStringWriter;Lo/KI$TaskDescription;)V
    .locals 1

    .line 27
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jT:I

    invoke-direct {p0, p1, p2, v0, p3}, Lo/KI;-><init>(Landroid/view/View;Lo/PooledStringWriter;ILo/KI$TaskDescription;)V

    .line 28
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->jU:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/KF;->d:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p2}, Lo/PooledStringWriter;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lo/KF;->d:Landroid/widget/TextView;

    sget p2, Lcom/netflix/mediaclient/ui/R$Application;->K:I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/widget/TextView;I)V

    .line 31
    iget-object p1, p0, Lo/KF;->d:Landroid/widget/TextView;

    sget p2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aM:I

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/util/ViewUtils;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lo/KI;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    .line 39
    iget-object v0, p0, Lo/KF;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p0, p1}, Lo/KF;->a(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V

    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/ParcelFormatException;Landroid/os/Parcelable;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lo/KF;->a(Ljava/lang/Object;Lo/ParcelFormatException;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {p0, p1}, Lo/KF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lo/ParcelFormatException;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lo/ParcelFormatException;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lo/KF;->d:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/KF;->d:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
