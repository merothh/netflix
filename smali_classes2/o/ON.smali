.class public Lo/ON;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ON$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/ON$Application;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/OL;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Z

.field private final d:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ON$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ON$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/ON;->e:Lo/ON$Application;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput p1, p0, Lo/ON;->d:I

    iput p2, p0, Lo/ON;->i:I

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;)Ljava/lang/String;
    .locals 1

    const-string v0, "gridTitleAction"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;->boxshotWebp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gridTitleAction.boxshotWebp()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()F
    .locals 1

    const v0, 0x3f35c28f    # 0.71f

    return v0
.end method

.method public final c(I)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lo/ON;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OL;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/OL;->f()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/OL;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lo/ON;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lo/ON;->c:Z

    .line 179
    invoke-static {}, Lo/ady;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lo/ON;->a:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OL;

    .line 182
    invoke-virtual {v0}, Lo/OL;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lo/ON;->c:Z

    .line 189
    :cond_1
    invoke-virtual {p0}, Lo/ON;->notifyDataSetChanged()V

    return-void
.end method

.method public final d(I)Z
    .locals 1

    .line 166
    iget-object v0, p0, Lo/ON;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/OL;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    instance-of v0, p1, Lo/OE;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lo/OE;

    invoke-virtual {p1}, Lo/OE;->d()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lo/ON;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    .line 54
    iget-object v0, p0, Lo/ON;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/OL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/OL;->a()I

    move-result p1

    return p1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiTitleNotificationsAdapter - position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 51
    iput-object p1, p0, Lo/ON;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lo/ON;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/OL;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 124
    :goto_0
    iget-object v0, p0, Lo/ON;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 127
    instance-of v0, p1, Lo/OG$TaskDescription;

    if-eqz v0, :cond_3

    check-cast p1, Lo/OG$TaskDescription;

    if-eqz p2, :cond_2

    check-cast p2, Lo/OG;

    invoke-virtual {p1, p2}, Lo/OG$TaskDescription;->e(Lo/OG;)V

    goto/16 :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.HeroHeadline"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    instance-of v0, p1, Lo/OI$StateListAnimator;

    if-eqz v0, :cond_5

    check-cast p1, Lo/OI$StateListAnimator;

    if-eqz p2, :cond_4

    .line 129
    check-cast p2, Lo/OI;

    const v0, 0x3fe39581    # 1.778f

    .line 128
    invoke-virtual {p1, p2, v5, v0}, Lo/OI$StateListAnimator;->d(Lo/OI;Ljava/lang/Integer;F)Lo/akj;

    goto/16 :goto_1

    .line 129
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.HeroTitle"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_5
    instance-of v0, p1, Lo/OC$ActionBar;

    if-eqz v0, :cond_7

    check-cast p1, Lo/OC$ActionBar;

    if-eqz p2, :cond_6

    check-cast p2, Lo/OC;

    invoke-virtual {p1, p2}, Lo/OC$ActionBar;->a(Lo/OC;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.GridHeadline"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_7
    instance-of v0, p1, Lo/OE$Activity;

    if-eqz v0, :cond_9

    move-object v2, p1

    check-cast v2, Lo/OE$Activity;

    if-eqz p2, :cond_8

    .line 135
    move-object v3, p2

    check-cast v3, Lo/OE;

    .line 136
    invoke-virtual {v3}, Lo/OE;->c()Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ON;->b(Lcom/netflix/model/leafs/social/multititle/NotificationGridTitleAction;)Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {p0}, Lo/ON;->c()F

    move-result v6

    .line 139
    iget v7, p0, Lo/ON;->d:I

    .line 140
    iget v8, p0, Lo/ON;->i:I

    .line 134
    invoke-virtual/range {v2 .. v8}, Lo/OE$Activity;->b(Lo/OE;Ljava/lang/String;Ljava/lang/Integer;FII)V

    goto :goto_1

    .line 135
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.GridTitle"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_9
    instance-of v0, p1, Lo/Oz$ActionBar;

    if-eqz v0, :cond_b

    .line 143
    check-cast p1, Lo/Oz$ActionBar;

    if-eqz p2, :cond_a

    check-cast p2, Lo/Oz;

    invoke-virtual {p1, p2}, Lo/Oz$ActionBar;->c(Lo/Oz;)V

    goto :goto_1

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.CallToActionRow"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_b
    instance-of v0, p1, Lo/OS$ActionBar;

    if-eqz v0, :cond_d

    .line 146
    check-cast p1, Lo/OS$ActionBar;

    if-eqz p2, :cond_c

    check-cast p2, Lo/OS;

    invoke-virtual {p1, p2}, Lo/OS$ActionBar;->e(Lo/OS;)Lo/akj;

    goto :goto_1

    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.notifications.multititle.RatingInfoTitle"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(parent.context)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inflater.inflate(\n      \u2026  false\n                )"

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    if-eq p2, v3, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    .line 107
    new-instance p2, Lo/OE$Activity;

    .line 109
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cS:I

    .line 108
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p2, p1}, Lo/OE$Activity;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_2

    .line 100
    :cond_0
    new-instance p2, Lo/OS$ActionBar;

    .line 102
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->da:I

    .line 101
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p2, p1}, Lo/OS$ActionBar;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_2

    .line 89
    :cond_1
    new-instance p2, Lo/Oz$ActionBar;

    .line 91
    iget-boolean v3, p0, Lo/ON;->c:Z

    if-eqz v3, :cond_2

    .line 92
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cR:I

    goto :goto_0

    .line 94
    :cond_2
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cN:I

    .line 90
    :goto_0
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p2, p1}, Lo/Oz$ActionBar;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_2

    .line 78
    :cond_3
    new-instance p2, Lo/OC$ActionBar;

    .line 80
    iget-boolean v3, p0, Lo/ON;->c:Z

    if-eqz v3, :cond_4

    .line 81
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cQ:I

    goto :goto_1

    .line 83
    :cond_4
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cO:I

    .line 79
    :goto_1
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p2, p1}, Lo/OC$ActionBar;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_2

    .line 71
    :cond_5
    new-instance p2, Lo/OI$StateListAnimator;

    .line 73
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cV:I

    .line 72
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p2, p1}, Lo/OI$StateListAnimator;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    goto :goto_2

    .line 64
    :cond_6
    new-instance p2, Lo/OG$TaskDescription;

    .line 66
    sget v3, Lcom/netflix/mediaclient/ui/R$Dialog;->cU:I

    .line 65
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p2, p1}, Lo/OG$TaskDescription;-><init>(Landroid/view/View;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Intent;

    :goto_2
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V

    .line 155
    instance-of v0, p1, Lo/OS$ActionBar;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Lo/OS$ActionBar;

    invoke-virtual {p1}, Lo/OS$ActionBar;->d()V

    :cond_0
    return-void
.end method
