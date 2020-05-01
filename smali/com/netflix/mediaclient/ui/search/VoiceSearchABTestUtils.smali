.class public final Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils;
.super Ljava/lang/Object;
.source "VoiceSearchABTestUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showSoftKeyboard(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getVoiceSearchABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_FOUR:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showVoiceSearchInActionBar(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getVoiceSearchABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_ONE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showVoiceSearchInLayout(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/search/VoiceSearchABTestUtils$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getVoiceSearchABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startVoiceSearch(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getVoiceSearchABTestCell(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_FIVE:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
