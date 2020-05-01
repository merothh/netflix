.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    }
.end annotation


# static fields
.field public static final ICON_ERROR:Ljava/lang/String; = "error"

.field public static final ICON_INFO:Ljava/lang/String; = "info"

.field public static final ICON_WARN:Ljava/lang/String; = "warn"

.field public static final ICON_WHATSAPP:Ljava/lang/String; = "whatsapp"

.field private static final UMA_STALE_TIMEOUT_MILLIS:J


# instance fields
.field private mConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->UMA_STALE_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->setDefaultCtas(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;

    move-result-object p0

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->setDefaultBannerCtas(Ljava/util/List;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract abTestCell()I
.end method

.method public abstract abTestId()I
.end method

.method public abstract backgroundAction()Ljava/lang/String;
.end method

.method public abstract bannerAlert()Z
.end method

.method public abstract bannerBody()Ljava/lang/String;
.end method

.method public abstract bannerCtas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract bannerIcon()Ljava/lang/String;
.end method

.method public abstract bannerTitle()Ljava/lang/String;
.end method

.method public abstract bannerTrackingInfo()Ljava/lang/String;
.end method

.method public abstract bannerUmsAlertRenderFeedback()Ljava/lang/String;
.end method

.method public abstract blocking()Z
.end method

.method public abstract body()Ljava/lang/String;
.end method

.method public abstract ctas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end method

.method public getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->templateId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "white_modal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->templateId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "themed_promo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-object v0

    .line 170
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->STANDARD:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-object v0
.end method

.method public abstract icon()Ljava/lang/String;
.end method

.method public isConsumed()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    return v0
.end method

.method public isStale()Z
    .locals 5

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->UMA_STALE_TIMEOUT_MILLIS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract messageGuid()Ljava/lang/String;
.end method

.method public abstract messageId()J
.end method

.method public abstract messageName()Ljava/lang/String;
.end method

.method public abstract modalAlert()Z
.end method

.method public abstract multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;
.end method

.method public setConsumed(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->mConsumed:Z

    return-void
.end method

.method public abstract showOnBackgroundActionSuccess()Z
.end method

.method public abstract suppressForBackgroundAction()Z
.end method

.method public abstract suppressOnAppLaunch()Z
.end method

.method public abstract templateId()Ljava/lang/String;
.end method

.method public abstract themeName()Ljava/lang/String;
.end method

.method public abstract timestamp()J
.end method

.method public abstract title()Ljava/lang/String;
.end method

.method public abstract tooltipAlert()Z
.end method

.method public abstract tooltipCtas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tooltipIcon()Ljava/lang/String;
.end method

.method public abstract tooltipTitle()Ljava/lang/String;
.end method

.method public abstract trackingInfo()Ljava/lang/String;
.end method

.method public abstract umsAlertRenderFeedback()Ljava/lang/String;
.end method
