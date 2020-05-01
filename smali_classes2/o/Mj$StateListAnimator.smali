.class Lo/Mj$StateListAnimator;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    iput-object p1, p0, Lo/Mj$StateListAnimator;->e:Landroid/view/LayoutInflater;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/Mj$StateListAnimator;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c(I)Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lo/Mj$StateListAnimator;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public e(ILjava/lang/String;)V
    .locals 0

    .line 135
    iput p1, p0, Lo/Mj$StateListAnimator;->a:I

    .line 136
    iput-object p2, p0, Lo/Mj$StateListAnimator;->b:Ljava/lang/String;

    .line 137
    invoke-virtual {p0}, Lo/Mj$StateListAnimator;->notifyDataSetChanged()V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lo/Mj$StateListAnimator;->d:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lo/Mj$StateListAnimator;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 191
    iget-object v0, p0, Lo/Mj$StateListAnimator;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Lo/Mj$StateListAnimator;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 144
    iget-object p2, p0, Lo/Mj$StateListAnimator;->e:Landroid/view/LayoutInflater;

    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->cz:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 146
    new-instance p3, Lo/Mj$ActionBar;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->km:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kk:I

    .line 147
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p3, v0, v1}, Lo/Mj$ActionBar;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/Mj$ActionBar;

    .line 155
    :goto_0
    iget-object v0, p3, Lo/Mj$ActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lo/Mj$StateListAnimator;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v0, p0, Lo/Mj$StateListAnimator;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 157
    :goto_1
    iget-object v0, p3, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lo/Mj$StateListAnimator;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    .line 161
    iget-object v2, p3, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lo/Mj$StateListAnimator;->b:Ljava/lang/String;

    invoke-static {v3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 164
    :cond_4
    iget-object v1, p3, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    if-eqz p1, :cond_5

    .line 168
    iget-object p1, p3, Lo/Mj$ActionBar;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/widget/TextView;)V

    .line 169
    iget-object p1, p3, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/widget/TextView;)V

    goto :goto_5

    .line 172
    :cond_5
    iget-object p1, p3, Lo/Mj$ActionBar;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/widget/TextView;)V

    .line 173
    iget-object p1, p3, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/widget/TextView;)V

    :goto_5
    return-object p2
.end method
