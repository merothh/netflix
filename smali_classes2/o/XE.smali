.class public final Lo/XE;
.super Lo/XL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/XE$StateListAnimator;
    }
.end annotation


# static fields
.field public static final c:Lo/XE$StateListAnimator;


# instance fields
.field private final a:Lo/GridView;

.field private final b:Lo/GridView;

.field private d:Ljava/lang/String;

.field private e:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

.field private final f:Lo/GridView;

.field private final g:Lo/ImageSwitcher;

.field private final h:Landroid/widget/FrameLayout;

.field private final i:Lo/ImageSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/XE$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/XE$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/XE;->c:Lo/XE$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Lo/Xx;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickHandler"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lo/XL;-><init>(Landroid/view/ViewGroup;Lo/Xx;)V

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ir:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "layout.findViewById(R.id\u2026ractive_navigation_image)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/GridView;

    iput-object p2, p0, Lo/XE;->b:Lo/GridView;

    .line 29
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->is:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "layout.findViewById(R.id\u2026navigation_image_overlay)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/GridView;

    iput-object p2, p0, Lo/XE;->a:Lo/GridView;

    .line 31
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->it:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "layout.findViewById(R.id\u2026n_image_overlay_selected)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/GridView;

    iput-object p2, p0, Lo/XE;->f:Lo/GridView;

    .line 32
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->lf:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "layout.findViewById(R.id\u2026ation_choice_point_title)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/ImageSwitcher;

    iput-object p2, p0, Lo/XE;->i:Lo/ImageSwitcher;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->iv:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lo/XE;->h:Landroid/widget/FrameLayout;

    .line 36
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ld:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "layout.findViewById(R.id\u2026igation_debug_segment_id)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/XE;->g:Lo/ImageSwitcher;

    return-void
.end method

.method public static final synthetic a(Lo/XE;)Lo/GridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XE;->b:Lo/GridView;

    return-object p0
.end method

.method public static final synthetic b(Lo/XE;)Lo/GridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XE;->a:Lo/GridView;

    return-object p0
.end method

.method public static final synthetic c(Lo/XE;)Lo/GridView;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XE;->f:Lo/GridView;

    return-object p0
.end method

.method public static final synthetic d(Lo/XE;)Lo/ImageSwitcher;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XE;->i:Lo/ImageSwitcher;

    return-object p0
.end method

.method public static final synthetic e(Lo/XE;)Landroid/widget/FrameLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/XE;->h:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/XE;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/XE;->d:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    .line 159
    invoke-super {p0}, Lo/XL;->b()V

    .line 160
    iget-object v0, p0, Lo/XE;->b:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->i()V

    .line 161
    iget-object v0, p0, Lo/XE;->a:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->i()V

    .line 162
    iget-object v0, p0, Lo/XE;->f:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->i()V

    return-void
.end method

.method public b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/condition/State;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerControls"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p2, p2, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    sget-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/State;->SEGMENT_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p2}, Lo/XE;->a(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->choicePoints()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    invoke-virtual {p0, p2}, Lo/XE;->d(Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;)V

    .line 67
    invoke-virtual {p4}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->choicePointsMetadata()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    move-result-object p2

    .line 69
    invoke-virtual {p0}, Lo/XE;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lo/XE;->j()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lo/XE;->d()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;->description()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lo/XE;->f()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {p0}, Lo/XE;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lo/XE;->c()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {p0}, Lo/XE;->c()Lo/ImageSwitcher;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 79
    :goto_3
    iget-object v1, p0, Lo/XE;->i:Lo/ImageSwitcher;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lo/XE;->a:Lo/GridView;

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lo/XE;->b:Lo/GridView;

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    if-eqz p2, :cond_4

    .line 84
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v0

    .line 86
    :cond_4
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->cell()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;

    invoke-direct {v2, p0, p4, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;-><init>(Lo/XE;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;)V

    check-cast v2, Lo/alO;

    .line 83
    invoke-static {v0, p1, v1, v2}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0, p3}, Lo/XE;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lo/ImageSwitcher;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/XE;->g:Lo/ImageSwitcher;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lo/XE;->f:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lo/XE;->a:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lo/XE;->b:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lo/XE;->i:Lo/ImageSwitcher;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lo/XE;->c()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lo/XE;->f:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lo/XE;->a:Lo/GridView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lo/XE;->b:Lo/GridView;

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    .line 49
    invoke-virtual {p0}, Lo/XE;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lo/XE;->c()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 52
    :cond_1
    iget-object p1, p0, Lo/XE;->i:Lo/ImageSwitcher;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/XE;->e:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    return-object v0
.end method

.method public d(Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lo/XE;->e:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    return-void
.end method

.method public e()I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/XE;->d()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;->startTimeMs()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
