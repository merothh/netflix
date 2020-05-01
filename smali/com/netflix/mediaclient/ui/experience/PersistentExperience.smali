.class public final enum Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
.super Ljava/lang/Enum;
.source "PersistentExperience.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/experience/PersistentExperience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field private static final PERSISTENT_EXPERIENCE_PREFS_KEY:Ljava/lang/String; = "persistent_experience_key"

.field private static final TAG:Ljava/lang/String; = "PersistentExperience"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "NON_KUBRICK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "KUBRICK_HERO_IMGS"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "KUBRICK_HIGH_DENSITY"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_SMALL_BOXART"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_LARGE_HORIZONTAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_SMALL_HORIZONTAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 4

    const-string/jumbo v0, "persistent_experience_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "SPY-7682: found null string for PERSISTENT_EXPERIENCE_PREFS_KEY - falling back to non-kubrick"

    const-string/jumbo v1, "PersistentExperience"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PersistentExperience"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got experience: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PersistentExperience"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t parse experience string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". Setting to default experience..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_1
.end method

.method public static update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 6

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->updateKubrickConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->updateABTest_6725(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    const-string/jumbo v1, "PersistentExperience"

    const-string/jumbo v2, "null config interface - can\'t update"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string/jumbo v1, "persistent_experience_key"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_3
    const-string/jumbo v2, "PersistentExperience"

    const-string/jumbo v3, "Updating - Device cat: %s, Kubrick cell: %s, experience: %s"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "null Kubrick config"

    :goto_1
    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    move-result-object v1

    goto :goto_1
.end method

.method private static updateABTest_6725(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$ABTestConfig$Cell:[I

    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getABTestConfiguration_6725()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static updateKubrickConfiguration(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience$1;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$KubrickConfigData$KubrickCell:[I

    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getKubrickConfiguration()Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;->getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-object v0
.end method
