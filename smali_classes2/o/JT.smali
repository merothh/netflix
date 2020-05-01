.class public final Lo/JT;
.super Lo/KL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JT$Activity;,
        Lo/JT$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KL<",
        "Lo/AB;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/JT$ActionBar;


# instance fields
.field private c:Lo/Am;

.field private d:Lo/PS;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/JT$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/JT$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/JT;->a:Lo/JT$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchStrategy"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct/range {p0 .. p7}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 42
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->g()Lo/Am;

    move-result-object p1

    iput-object p1, p0, Lo/JT;->c:Lo/Am;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/PooledStringWriter;ILo/KP;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Am;)V
    .locals 10

    move-object v0, p5

    move-object/from16 v9, p7

    const-string v1, "context"

    move-object v2, p1

    invoke-static {p1, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "lomo"

    move-object v3, p2

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    move-object v5, p3

    invoke-static {p3, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fetchStrategy"

    invoke-static {p5, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackingInfoHolder"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceManager"

    invoke-static {v9, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    move-object v7, v0

    check-cast v7, Lo/KN;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move-object/from16 v4, p7

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lo/KL;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 57
    iput-object v9, v0, Lo/JT;->c:Lo/Am;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 82
    new-instance p2, Lo/Ll;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "parent.context"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lo/Ll;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 83
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fq:I

    invoke-virtual {p2, v0}, Lo/Ll;->setId(I)V

    .line 84
    new-instance v0, Lo/JT$Activity;

    move-object v1, p0

    check-cast v1, Lo/PatternMatcher;

    invoke-direct {v0, p1, p2, v1}, Lo/JT$Activity;-><init>(Landroid/view/ViewGroup;Lo/Ll;Lo/PatternMatcher;)V

    check-cast v0, Lo/KL$StateListAnimator;

    return-object v0

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lo/KL;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    const-string p2, "super.onCreateViewHolder(parent, viewType)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c(Lo/KL$StateListAnimator;Lo/AR;IZ)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lo/JT;->g()Lo/Ky;

    move-result-object v2

    const-string v0, "lomoContext"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lo/Av;

    iget-object v6, p0, Lo/JT;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const-string p2, "mTrackingInfoHolder"

    invoke-static {v6, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/KL$StateListAnimator;->c(Lo/Ky;Lo/Av;IZLcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lo/Am;IILo/zU;)V
    .locals 1

    const-string p1, "serviceManager"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "updateVideosManagerCallback"

    invoke-static {p5, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lo/JT;->g()Lo/Ky;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/JT;->g()Lo/Ky;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p1

    const-string v0, "lomoContext.lomo()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 69
    :goto_0
    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    new-instance v0, Lo/KeyAttestationApplicationId;

    invoke-direct {v0, p3, p4, p1}, Lo/KeyAttestationApplicationId;-><init>(IILjava/lang/String;)V

    check-cast v0, Lo/ConfirmationCallback;

    invoke-interface {p2, v0, p5}, Lo/zG;->a(Lo/ConfirmationCallback;Lo/zU;)V

    return-void
.end method

.method public synthetic e(Lo/ParcelFormatException$Activity;Lo/AR;IZ)V
    .locals 0

    .line 23
    check-cast p1, Lo/KL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/JT;->c(Lo/KL$StateListAnimator;Lo/AR;IZ)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lo/KL;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    new-instance v0, Lo/PS;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lo/JT;->d:Lo/PS;

    .line 123
    iget-object p1, p0, Lo/JT;->c:Lo/Am;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/JT;->d:Lo/PS;

    check-cast v0, Lo/nV;

    invoke-interface {p1, v0}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/JT;->b(Landroid/view/ViewGroup;I)Lo/KL$StateListAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Lo/KL;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 128
    iget-object p1, p0, Lo/JT;->d:Lo/PS;

    if-eqz p1, :cond_1

    .line 129
    iget-object v0, p0, Lo/JT;->c:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Lo/nV;

    invoke-interface {v0, p1}, Lo/nS;->d(Lo/nV;)V

    :cond_0
    const/4 p1, 0x0

    .line 130
    check-cast p1, Lo/PS;

    iput-object p1, p0, Lo/JT;->d:Lo/PS;

    :cond_1
    return-void
.end method

.method public synthetic s()I
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/JT;->t()I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
