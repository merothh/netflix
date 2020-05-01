.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.source ""


# instance fields
.field private final abTestCell:I

.field private final abTestId:I

.field private final backgroundAction:Ljava/lang/String;

.field private final bannerAlert:Z

.field private final bannerBody:Ljava/lang/String;

.field private final bannerCtas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final bannerIcon:Ljava/lang/String;

.field private final bannerTitle:Ljava/lang/String;

.field private final bannerTrackingInfo:Ljava/lang/String;

.field private final bannerUmsAlertRenderFeedback:Ljava/lang/String;

.field private final blocking:Z

.field private final body:Ljava/lang/String;

.field private final ctas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final messageGuid:Ljava/lang/String;

.field private final messageId:J

.field private final messageName:Ljava/lang/String;

.field private final modalAlert:Z

.field private final multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

.field private final showOnBackgroundActionSuccess:Z

.field private final suppressForBackgroundAction:Z

.field private final suppressOnAppLaunch:Z

.field private final templateId:Ljava/lang/String;

.field private final themeName:Ljava/lang/String;

.field private final timestamp:J

.field private final title:Ljava/lang/String;

.field private final tooltipAlert:Z

.field private final tooltipCtas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final tooltipIcon:Ljava/lang/String;

.field private final tooltipTitle:Ljava/lang/String;

.field private final trackingInfo:Ljava/lang/String;

.field private final umsAlertRenderFeedback:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 110
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;-><init>()V

    move v1, p1

    .line 111
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestCell:I

    move v1, p2

    .line 112
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestId:I

    move-object v1, p3

    .line 113
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    move-object v1, p4

    .line 114
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->templateId:Ljava/lang/String;

    move-object v1, p5

    .line 115
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    move-wide v1, p6

    .line 116
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageId:J

    move-object v1, p8

    .line 117
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageGuid:Ljava/lang/String;

    move-object v1, p9

    .line 118
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->icon:Ljava/lang/String;

    move-object v1, p10

    .line 119
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerIcon:Ljava/lang/String;

    move-object v1, p11

    .line 120
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipIcon:Ljava/lang/String;

    move v1, p12

    .line 121
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->blocking:Z

    move/from16 v1, p13

    .line 122
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->modalAlert:Z

    move/from16 v1, p14

    .line 123
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerAlert:Z

    move/from16 v1, p15

    .line 124
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipAlert:Z

    move/from16 v1, p16

    .line 125
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressOnAppLaunch:Z

    move/from16 v1, p17

    .line 126
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressForBackgroundAction:Z

    move/from16 v1, p18

    .line 127
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->showOnBackgroundActionSuccess:Z

    move-object/from16 v1, p19

    .line 128
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->backgroundAction:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 129
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->title:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 130
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTitle:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 131
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipTitle:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 132
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->body:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 133
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerBody:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 134
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->ctas:Ljava/util/List;

    move-object/from16 v1, p26

    .line 135
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerCtas:Ljava/util/List;

    move-object/from16 v1, p27

    .line 136
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipCtas:Ljava/util/List;

    move-object/from16 v1, p28

    .line 137
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->trackingInfo:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 138
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTrackingInfo:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 139
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->umsAlertRenderFeedback:Ljava/lang/String;

    move-object/from16 v1, p31

    .line 140
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerUmsAlertRenderFeedback:Ljava/lang/String;

    move-wide/from16 v1, p32

    .line 141
    iput-wide v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->timestamp:J

    move-object/from16 v1, p34

    .line 142
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    move-object/from16 v1, p35

    .line 143
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->themeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abTestCell()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestCell:I

    return v0
.end method

.method public abTestId()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestId:I

    return v0
.end method

.method public backgroundAction()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->backgroundAction:Ljava/lang/String;

    return-object v0
.end method

.method public bannerAlert()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerAlert:Z

    return v0
.end method

.method public bannerBody()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerBody:Ljava/lang/String;

    return-object v0
.end method

.method public bannerCtas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerCtas:Ljava/util/List;

    return-object v0
.end method

.method public bannerIcon()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerIcon:Ljava/lang/String;

    return-object v0
.end method

.method public bannerTitle()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public bannerTrackingInfo()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTrackingInfo:Ljava/lang/String;

    return-object v0
.end method

.method public bannerUmsAlertRenderFeedback()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerUmsAlertRenderFeedback:Ljava/lang/String;

    return-object v0
.end method

.method public blocking()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->blocking:Z

    return v0
.end method

.method public body()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->body:Ljava/lang/String;

    return-object v0
.end method

.method public ctas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->ctas:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 378
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    .line 379
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestCell:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestCell()I

    move-result v3

    if-ne v1, v3, :cond_17

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestId:I

    .line 380
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestId()I

    move-result v3

    if-ne v1, v3, :cond_17

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->templateId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->templateId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->templateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 383
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_2
    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageId:J

    .line 384
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageGuid:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 385
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->icon:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 386
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->icon()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->icon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerIcon:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 387
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerIcon()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipIcon:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 388
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipIcon()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_6
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->blocking:Z

    .line 389
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->modalAlert:Z

    .line 390
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerAlert:Z

    .line 391
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipAlert:Z

    .line 392
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipAlert()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressOnAppLaunch:Z

    .line 393
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressOnAppLaunch()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressForBackgroundAction:Z

    .line 394
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressForBackgroundAction()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->showOnBackgroundActionSuccess:Z

    .line 395
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->showOnBackgroundActionSuccess()Z

    move-result v3

    if-ne v1, v3, :cond_17

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->backgroundAction:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 396
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->backgroundAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->backgroundAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_7
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->title:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 397
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_8
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTitle:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 398
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_9
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipTitle:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 399
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_a
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->body:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 400
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_b

    :cond_c
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_b
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerBody:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 401
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerBody()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_c

    :cond_d
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_c
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->ctas:Ljava/util/List;

    if-nez v1, :cond_e

    .line 402
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->ctas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_d
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerCtas:Ljava/util/List;

    if-nez v1, :cond_f

    .line 403
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_e

    :cond_f
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_e
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipCtas:Ljava/util/List;

    if-nez v1, :cond_10

    .line 404
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipCtas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_10
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipCtas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_f
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->trackingInfo:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 405
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_10

    :cond_11
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_10
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTrackingInfo:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 406
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTrackingInfo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_11

    :cond_12
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTrackingInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_11
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->umsAlertRenderFeedback:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 407
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->umsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_12

    :cond_13
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->umsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_12
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerUmsAlertRenderFeedback:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 408
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerUmsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_13

    :cond_14
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerUmsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_13
    iget-wide v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->timestamp:J

    .line 409
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    if-nez v1, :cond_15

    .line 410
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_14

    :cond_15
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :goto_14
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->themeName:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 411
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->themeName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_15

    :cond_16
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->themeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_15

    :cond_17
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_18
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 420
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestCell:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 422
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestId:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 424
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 426
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->templateId:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 428
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 430
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageId:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v5, v4

    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    .line 432
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageGuid:Ljava/lang/String;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_3
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 434
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->icon:Ljava/lang/String;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 436
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerIcon:Ljava/lang/String;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_5
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 438
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipIcon:Ljava/lang/String;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_6
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 440
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->blocking:Z

    const/16 v5, 0x4cf

    const/16 v6, 0x4d5

    if-eqz v4, :cond_7

    const/16 v4, 0x4cf

    goto :goto_7

    :cond_7
    const/16 v4, 0x4d5

    :goto_7
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 442
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->modalAlert:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x4cf

    goto :goto_8

    :cond_8
    const/16 v4, 0x4d5

    :goto_8
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 444
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerAlert:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v4, 0x4d5

    :goto_9
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 446
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipAlert:Z

    if-eqz v4, :cond_a

    const/16 v4, 0x4cf

    goto :goto_a

    :cond_a
    const/16 v4, 0x4d5

    :goto_a
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 448
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressOnAppLaunch:Z

    if-eqz v4, :cond_b

    const/16 v4, 0x4cf

    goto :goto_b

    :cond_b
    const/16 v4, 0x4d5

    :goto_b
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 450
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressForBackgroundAction:Z

    if-eqz v4, :cond_c

    const/16 v4, 0x4cf

    goto :goto_c

    :cond_c
    const/16 v4, 0x4d5

    :goto_c
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 452
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->showOnBackgroundActionSuccess:Z

    if-eqz v4, :cond_d

    goto :goto_d

    :cond_d
    const/16 v5, 0x4d5

    :goto_d
    xor-int/2addr v0, v5

    mul-int v0, v0, v1

    .line 454
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->backgroundAction:Ljava/lang/String;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_e
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 456
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->title:Ljava/lang/String;

    if-nez v4, :cond_f

    const/4 v4, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_f
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 458
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTitle:Ljava/lang/String;

    if-nez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_10

    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_10
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 460
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipTitle:Ljava/lang/String;

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_11

    :cond_11
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_11
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 462
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->body:Ljava/lang/String;

    if-nez v4, :cond_12

    const/4 v4, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_12
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 464
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerBody:Ljava/lang/String;

    if-nez v4, :cond_13

    const/4 v4, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_13
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 466
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->ctas:Ljava/util/List;

    if-nez v4, :cond_14

    const/4 v4, 0x0

    goto :goto_14

    :cond_14
    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_14
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 468
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerCtas:Ljava/util/List;

    if-nez v4, :cond_15

    const/4 v4, 0x0

    goto :goto_15

    :cond_15
    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_15
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 470
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipCtas:Ljava/util/List;

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_16

    :cond_16
    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_16
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 472
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->trackingInfo:Ljava/lang/String;

    if-nez v4, :cond_17

    const/4 v4, 0x0

    goto :goto_17

    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_17
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 474
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTrackingInfo:Ljava/lang/String;

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_18

    :cond_18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_18
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 476
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->umsAlertRenderFeedback:Ljava/lang/String;

    if-nez v4, :cond_19

    const/4 v4, 0x0

    goto :goto_19

    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_19
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 478
    iget-object v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerUmsAlertRenderFeedback:Ljava/lang/String;

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_1a

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1a
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 480
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->timestamp:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 482
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 484
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->themeName:Ljava/lang/String;

    if-nez v1, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1c
    xor-int/2addr v0, v3

    return v0
.end method

.method public icon()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public locale()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public messageGuid()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public messageId()J
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageId:J

    return-wide v0
.end method

.method public messageName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    return-object v0
.end method

.method public modalAlert()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->modalAlert:Z

    return v0
.end method

.method public multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    return-object v0
.end method

.method public showOnBackgroundActionSuccess()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->showOnBackgroundActionSuccess:Z

    return v0
.end method

.method public suppressForBackgroundAction()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressForBackgroundAction:Z

    return v0
.end method

.method public suppressOnAppLaunch()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressOnAppLaunch:Z

    return v0
.end method

.method public templateId()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public themeName()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->themeName:Ljava/lang/String;

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 318
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->timestamp:J

    return-wide v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->title:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UmaAlert{abTestCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abTestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->abTestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->messageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tooltipIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blocking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->blocking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", modalAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->modalAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bannerAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tooltipAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suppressOnAppLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressOnAppLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suppressForBackgroundAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->suppressForBackgroundAction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOnBackgroundActionSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->showOnBackgroundActionSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->backgroundAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tooltipTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ctas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->ctas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerCtas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerCtas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tooltipCtas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipCtas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->trackingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerTrackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerTrackingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", umsAlertRenderFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->umsAlertRenderFeedback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bannerUmsAlertRenderFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->bannerUmsAlertRenderFeedback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", multiMonthOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->multiMonthOffer:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", themeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->themeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tooltipAlert()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipAlert:Z

    return v0
.end method

.method public tooltipCtas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipCtas:Ljava/util/List;

    return-object v0
.end method

.method public tooltipIcon()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipIcon:Ljava/lang/String;

    return-object v0
.end method

.method public tooltipTitle()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->tooltipTitle:Ljava/lang/String;

    return-object v0
.end method

.method public trackingInfo()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->trackingInfo:Ljava/lang/String;

    return-object v0
.end method

.method public umsAlertRenderFeedback()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_UmaAlert;->umsAlertRenderFeedback:Ljava/lang/String;

    return-object v0
.end method
