.class public final Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->d(FLcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Lcom/netflix/model/leafs/originals/interactive/Button;",
        "Lcom/netflix/model/leafs/originals/interactive/Button$Label;",
        "Lcom/netflix/model/leafs/originals/interactive/Action;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Vk;

.field final synthetic d:F

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;


# direct methods
.method public constructor <init>(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p3, p0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/model/leafs/originals/interactive/Button;Lcom/netflix/model/leafs/originals/interactive/Button$Label;Lcom/netflix/model/leafs/originals/interactive/Action;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "endButton"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "label"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    new-instance v2, Lo/GridView;

    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {v5}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v14, "context"

    invoke-static {v6, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/Button$Label;->string()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lo/GridView;->setTag(Ljava/lang/Object;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/Button$Label;->string()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-static {v5}, Lo/Vk;->a(Lo/Vk;)Landroid/widget/FrameLayout;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v15, Lo/GridView;

    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {v5}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v12}, Lo/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    .line 237
    iget-object v5, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-static {v5}, Lo/Vk;->a(Lo/Vk;)Landroid/widget/FrameLayout;

    move-result-object v5

    move-object v6, v15

    check-cast v6, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    sget-object v5, Lo/XJ;->c:Lo/XJ;

    .line 239
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {v6}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v6

    .line 241
    iget-object v7, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v7

    const/16 v24, 0x0

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->states()Lcom/netflix/model/leafs/originals/interactive/Button$States;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/Button$States;->defaultState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object/from16 v8, v24

    :goto_0
    invoke-virtual {v7, v8}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v7

    move-object v8, v7

    goto :goto_1

    :cond_1
    move-object/from16 v8, v24

    .line 242
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v9

    .line 243
    iget v10, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d:F

    const/4 v11, 0x0

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v7, v2

    .line 238
    invoke-static/range {v5 .. v13}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 245
    sget-object v5, Lo/XJ;->c:Lo/XJ;

    .line 246
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {v6}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v16

    .line 248
    iget-object v6, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->e:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    invoke-virtual {v6}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->states()Lcom/netflix/model/leafs/originals/interactive/Button$States;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/Button$States;->selectedState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object/from16 v7, v24

    :goto_2
    invoke-virtual {v6, v7}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v6

    move-object/from16 v18, v6

    goto :goto_3

    :cond_3
    move-object/from16 v18, v24

    .line 249
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v19

    .line 250
    iget v6, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d:F

    const/16 v21, 0x0

    const/16 v22, 0x20

    const/16 v23, 0x0

    move-object v7, v15

    move-object v15, v5

    move-object/from16 v17, v7

    move/from16 v20, v6

    .line 245
    invoke-static/range {v15 .. v23}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    const/16 v5, 0x8

    .line 252
    invoke-virtual {v7, v5}, Lo/GridView;->setVisibility(I)V

    .line 253
    new-instance v5, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;

    invoke-direct {v5, v0, v7, v2, v1}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2$5;-><init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;Lo/GridView;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Action;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v1, Lo/ImageSwitcher;

    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-virtual {v2}, Lo/Vk;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v14}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    const/4 v2, 0x4

    .line 277
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setTextAlignment(I)V

    .line 278
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->a:Lo/Vk;

    invoke-static {v2}, Lo/Vk;->a(Lo/Vk;)Landroid/widget/FrameLayout;

    move-result-object v2

    move-object v5, v1

    check-cast v5, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/Button$Label;->string()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 280
    sget-object v6, Lo/XJ;->c:Lo/XJ;

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v8

    const-string v2, "endButton.rect()"

    invoke-static {v8, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/model/leafs/originals/interactive/Button;->states()Lcom/netflix/model/leafs/originals/interactive/Button$States;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/Button$States;->defaultState()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v24

    :cond_4
    move-object/from16 v9, v24

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/netflix/model/leafs/originals/interactive/Button$Label;->yOffset()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "label.yOffset()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 285
    iget v11, v0, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d:F

    move-object v7, v1

    .line 280
    invoke-virtual/range {v6 .. v11}, Lo/XJ;->a(Lo/ImageSwitcher;Lcom/netflix/model/leafs/originals/interactive/SourceRect;Lcom/netflix/model/leafs/originals/interactive/SourceRect;IF)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/Button;

    check-cast p2, Lcom/netflix/model/leafs/originals/interactive/Button$Label;

    check-cast p3, Lcom/netflix/model/leafs/originals/interactive/Action;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/v2/interactive/InteractiveChoicePoint$setupStartAndEndOptions$2;->d(Lcom/netflix/model/leafs/originals/interactive/Button;Lcom/netflix/model/leafs/originals/interactive/Button$Label;Lcom/netflix/model/leafs/originals/interactive/Action;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
