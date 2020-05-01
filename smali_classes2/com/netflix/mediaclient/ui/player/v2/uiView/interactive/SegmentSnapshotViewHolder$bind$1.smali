.class public final Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XE;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/condition/State;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/model/leafs/originals/interactive/AssetManifest;",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

.field final synthetic c:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

.field final synthetic d:Lo/XE;


# direct methods
.method public constructor <init>(Lo/XE;Lcom/netflix/model/leafs/originals/interactive/PlayerControls;Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->b:Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->c:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;)Lo/akj;
    .locals 12

    const-string v0, "assetMap"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;->mainView()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell$MainView;

    move-result-object v0

    .line 90
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;->focus()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell$Focus;

    move-result-object v1

    .line 91
    sget-object v2, Lo/ErrorCodes;->d:Lo/ErrorCodes$TaskDescription;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {v2, p2}, Lo/ErrorCodes$TaskDescription;->e(Landroid/content/Context;)Lo/ErrorCodes;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell$MainView;->assetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 94
    :goto_0
    sget-object v3, Lo/XJ;->c:Lo/XJ;

    .line 96
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-static {v4}, Lo/XE;->b(Lo/XE;)Lo/GridView;

    move-result-object v5

    .line 97
    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    .line 98
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v7

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-virtual {v0}, Lo/XE;->h()F

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v4, p2

    .line 94
    invoke-static/range {v3 .. v11}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell$Focus;->assetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 104
    :goto_1
    sget-object v3, Lo/XJ;->c:Lo/XJ;

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-static {v1}, Lo/XE;->c(Lo/XE;)Lo/GridView;

    move-result-object v5

    .line 107
    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    .line 108
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v7

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-virtual {v0}, Lo/XE;->h()F

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v4, p2

    .line 104
    invoke-static/range {v3 .. v11}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->b:Lcom/netflix/model/leafs/originals/interactive/PlayerControls;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls;->config()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config;->images()Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config$ImagesConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-virtual {v1}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$Config$ImagesConfig;->getImageForSegmentId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->c:Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata;->choicePoints()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->d:Lo/XE;

    invoke-virtual {v1}, Lo/XE;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$ChoicePoint;->assetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v0

    .line 120
    :cond_4
    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;->choicePosition()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    .line 122
    :cond_5
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1$3;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1$3;-><init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;Lo/ErrorCodes;)V

    check-cast p1, Lo/alN;

    .line 119
    invoke-static {v2, v0, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p3, Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/v2/uiView/interactive/SegmentSnapshotViewHolder$bind$1;->e(Lcom/netflix/model/leafs/originals/interactive/AssetManifest;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/originals/interactive/PlayerControls$ChoicePointsMetadata$Cell;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
