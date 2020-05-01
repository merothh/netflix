.class public final Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;
.super Ljava/lang/Object;
.source "PlayerTypeFactory.java"


# static fields
.field private static final PREFERENCE_PLAYER_TYPE:Ljava/lang/String; = "nflx_player_type"

.field private static final PREFERENCE_PLAYER_TYPE_QA_OVERRIDE:Ljava/lang/String; = "nflx_player_type_qa"

.field private static final TAG:Ljava/lang/String; = "nf-playertypefactory"

.field private static cryptoFactoryType:I

.field private static currentType:Lcom/netflix/mediaclient/media/PlayerType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRecords(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "nflx_player_type"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 6

    const/16 v5, 0x12

    const/16 v4, 0x11

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf-playertypefactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crypto factory type (CDM is 2): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->cryptoFactoryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "KK and above, Default to JPlayer2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    :goto_0
    return-object v0

    :cond_1
    if-le v0, v5, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->isAvcDecoderSupportsAdaptivePlayback()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "JB MR2+, Default to JPlayer2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    goto :goto_0

    :cond_2
    if-lt v0, v5, :cond_3

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isWidevineSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "JB MR2 with WV, Default to JPlayer2"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    goto :goto_0

    :cond_3
    if-lt v0, v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->isPropertyStreamingVideoDrs()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "JB+ with ro.streaming.video.drs presented and true, Default to JPlayer2 "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    goto :goto_0

    :cond_4
    if-lt v0, v4, :cond_5

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "JB MR1+, Default to JPlayer"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "Default to OpenMax AL (XAL)"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    goto :goto_0
.end method

.method public static declared-synchronized getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 3

    const-class v1, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_0

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "First call getCurrentType(). Initiate it. Check if it is saved to preferences before."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getPlayerTypeFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_1

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "Current type was not saved to preferences before. Find default player."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isValidPlayerType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "Current type is not valid! Replace it with default!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nflx_player_type"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getJPlayer()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static getJPlayer2()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static getJPlayerBase()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method private static getPlayerTypeFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v1, "Player type was not saved in preferences before, no override."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getXalPlayer()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static getXalmpPlayer()Lcom/netflix/mediaclient/media/PlayerType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    return-object v0
.end method

.method public static initialize(Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;)V
    .locals 1

    invoke-interface {p0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getCryptoFactoryType()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->cryptoFactoryType:I

    return-void
.end method

.method public static isDefault(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, -0x1

    const-string/jumbo v0, "nflx_player_type"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJPlayer(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/media/PlayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJPlayer2(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/media/PlayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJPlayerBase(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/media/PlayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlayerTypeSupported(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isValidPlayerType(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    return v0
.end method

.method private static isValidPlayerType(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isValidPlayerType(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    return v0
.end method

.method private static isValidPlayerType(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 7

    const/16 v6, 0xd

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "nf-playertypefactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not supported type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for this device!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "nf-playertypefactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "XAL player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v6, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "nf-playertypefactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "XAL Main Profile player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v2, v6, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "nf-playertypefactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JPlayer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xf

    if-gt v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v3, "nf-playertypefactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JPlayer2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static isWidevineSupported()Z
    .locals 2

    sget v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->cryptoFactoryType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXalPlayer(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device7:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/media/PlayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXalmpPlayer(Lcom/netflix/mediaclient/media/PlayerType;)Z
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/media/PlayerType;->device8:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/media/PlayerType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized resetPlayerTypeByQA(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;
    .locals 3

    const-class v1, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "Removing player type QA override from preferences"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "nflx_player_type_qa"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->getCurrentType(Landroid/content/Context;)Lcom/netflix/mediaclient/media/PlayerType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPlayerTypeForQAOverride(Landroid/content/Context;Lcom/netflix/mediaclient/media/PlayerType;)V
    .locals 4

    const-class v1, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "setPlayerTypeForQAOverride: Type is null, do nothing!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf-playertypefactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlayerTypeForQAOverride: Updating player type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->isValidPlayerType(Lcom/netflix/mediaclient/media/PlayerType;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "setPlayerTypeForQAOverride: Invalid player type for this device. We should never be here!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "nf-playertypefactory"

    const-string/jumbo v2, "setPlayerTypeForQAOverride: Already known player type, used for playback currently. Do nothing"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nf-playertypefactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SsetPlayerTypeForQAOverride: aving to persistence new player type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput-object p1, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->currentType:Lcom/netflix/mediaclient/media/PlayerType;

    const-string/jumbo v0, "nflx_player_type_qa"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
