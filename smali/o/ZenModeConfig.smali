.class public final Lo/ZenModeConfig;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ZenModeConfig$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/ZenModeConfig$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/SnoozeCriterion$Application;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/SnoozeCriterion$Application;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SnoozeCriterion$Application;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/ZenModeConfig;->a:Lo/SnoozeCriterion$Application;

    iput-object p2, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    .line 17
    iget-object p1, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    invoke-virtual {p0, p1}, Lo/ZenModeConfig;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/ZenModeConfig;)Lo/SnoozeCriterion$Application;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/ZenModeConfig;->a:Lo/SnoozeCriterion$Application;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lo/ZenModeConfig;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lo/ZenModeConfig;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lo/ZenModeConfig$Activity;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->co:I

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lo/ZenModeConfig$Activity;

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lo/ZenModeConfig$Activity;-><init>(Lo/ZenModeConfig;Landroid/view/View;)V

    return-object p2
.end method

.method public c(Lo/ZenModeConfig$Activity;I)V
    .locals 8

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->b()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lo/ZenModeConfig$Activity;->c()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "viewHolder.textView"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lo/ZenModeConfig$Activity;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 49
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->aH:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    const/4 v0, 0x1

    aput-object v2, v7, v0

    .line 48
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p1, Lo/ZenModeConfig$Activity;->itemView:Landroid/view/View;

    new-instance v2, Lo/ZenModeConfig$Application;

    invoke-direct {v2, p0, p2}, Lo/ZenModeConfig$Application;-><init>(Lo/ZenModeConfig;Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p2}, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;->e()Z

    move-result p2

    const-string v0, "viewHolder.currentLocationLabel"

    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p1}, Lo/ZenModeConfig$Activity;->d()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object p1, p1, Lo/ZenModeConfig$Activity;->itemView:Landroid/view/View;

    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->cF:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p1}, Lo/ZenModeConfig$Activity;->d()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object p1, p1, Lo/ZenModeConfig$Activity;->itemView:Landroid/view/View;

    const-string p2, "viewHolder.itemView"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/countrySelector/PhoneCodeListWrapper;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 21
    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x2

    new-array v0, v0, [Lo/alA;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;->d:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$1;

    check-cast v2, Lo/alA;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$2;->b:Lcom/netflix/mediaclient/acquisition2/components/countrySelector/CountryAdapter$sortData$2;

    check-cast v2, Lo/alA;

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/akX;->a([Lo/alA;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lo/ZenModeConfig;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 13
    check-cast p1, Lo/ZenModeConfig$Activity;

    invoke-virtual {p0, p1, p2}, Lo/ZenModeConfig;->c(Lo/ZenModeConfig$Activity;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lo/ZenModeConfig;->c(Landroid/view/ViewGroup;I)Lo/ZenModeConfig$Activity;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method
