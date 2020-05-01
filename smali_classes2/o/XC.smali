.class public final Lo/XC;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XC$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lo/XL;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/XC$Application;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/condition/State;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private g:Z

.field private final h:Lo/Xv;

.field private final i:Lo/XC$StateListAnimator;

.field private j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XC$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XC$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/XC;->a:Lo/XC$Application;

    return-void
.end method

.method public constructor <init>(Lo/Xv;)V
    .locals 1

    const-string v0, "uiView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lo/XC;->h:Lo/Xv;

    .line 21
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/XC;->c:Ljava/util/List;

    .line 64
    new-instance p1, Lo/XC$StateListAnimator;

    invoke-direct {p1, p0}, Lo/XC$StateListAnimator;-><init>(Lo/XC;)V

    iput-object p1, p0, Lo/XC;->i:Lo/XC$StateListAnimator;

    return-void
.end method

.method public static final synthetic c(Lo/XC;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/XC;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic d(Lo/XC;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lo/XC;->g:Z

    return p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/XC;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lo/XC;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/XL;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bW:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/FrameLayout;

    .line 92
    new-instance p2, Lo/XE;

    iget-object v0, p0, Lo/XC;->i:Lo/XC$StateListAnimator;

    check-cast v0, Lo/Xx;

    invoke-direct {p2, p1, v0}, Lo/XE;-><init>(Landroid/widget/FrameLayout;Lo/Xx;)V

    .line 93
    iget-boolean p1, p0, Lo/XC;->d:Z

    invoke-virtual {p2, p1}, Lo/XE;->c(Z)V

    .line 92
    check-cast p2, Lo/XL;

    return-object p2

    .line 91
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lo/XL;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lo/XC;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 99
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "trying to bind a view that we don\'t have"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lo/XC;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lo/XC;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 105
    iget-object v2, p0, Lo/XC;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/condition/State;

    const-string v2, "playerControls"

    .line 106
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lo/XC;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v1, p2, v2, v0}, Lo/XL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/condition/State;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;)V

    :cond_1
    return-void
.end method

.method public final c()Lo/Xv;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/XC;->h:Lo/Xv;

    return-object v0
.end method

.method public final c(Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;)V
    .locals 6

    .line 39
    iput-object p1, p0, Lo/XC;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->playerControlsSnapshots()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/XC;->g:Z

    .line 42
    iget-boolean v1, p0, Lo/XC;->g:Z

    if-eqz v1, :cond_a

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->maxSnapshotsToDisplay()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->playerControls()Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->choicePoints()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v3, p0, Lo/XC;->b:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 46
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_4
    const/4 v4, 0x1

    .line 48
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x2

    :cond_5
    if-ge v1, v4, :cond_6

    .line 49
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_6
    if-le v1, v2, :cond_8

    .line 52
    iget-object p1, p0, Lo/XC;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p1

    if-eqz p1, :cond_7

    sub-int v0, v3, v2

    invoke-virtual {p1, v0, v3}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->subList(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    goto :goto_5

    .line 55
    :cond_8
    iget-object p1, p0, Lo/XC;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0, v3}, Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;->subList(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p1

    .line 47
    :goto_5
    iput-object p1, p0, Lo/XC;->c:Ljava/util/List;

    .line 60
    :cond_a
    sget-object p1, Lo/XC;->a:Lo/XC$Application;

    check-cast p1, Lo/MessagePdu;

    .line 61
    invoke-virtual {p0}, Lo/XC;->notifyDataSetChanged()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "segmentId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lo/XC;->a:Lo/XC$Application;

    check-cast v0, Lo/MessagePdu;

    .line 149
    iput-object p1, p0, Lo/XC;->b:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lo/XC;->getItemCount()I

    move-result p1

    iget-object v0, p0, Lo/XC;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lo/XC;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public c(Lo/XL;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lo/XL;->b()V

    return-void
.end method

.method public d(Lo/XL;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XL;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V

    goto :goto_1

    .line 117
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 119
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lo/XL;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Lo/XC;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/XC;->j:Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    return-object v0
.end method

.method public final e(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lo/XC;->d:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 132
    iget-object v0, p0, Lo/XC;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 137
    iput-object p1, p0, Lo/XC;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/XC;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 17
    check-cast p1, Lo/XL;

    invoke-virtual {p0, p1, p2}, Lo/XC;->b(Lo/XL;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;ILjava/util/List;)V
    .locals 0

    .line 17
    check-cast p1, Lo/XL;

    invoke-virtual {p0, p1, p2, p3}, Lo/XC;->d(Lo/XL;ILjava/util/List;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lo/XC;->b(Landroid/view/ViewGroup;I)Lo/XL;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Activity;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 143
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lo/XC;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p1, p0, Lo/XC;->f:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$Intent;)V
    .locals 0

    .line 17
    check-cast p1, Lo/XL;

    invoke-virtual {p0, p1}, Lo/XC;->c(Lo/XL;)V

    return-void
.end method
