.class abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;
.super Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;
    }
.end annotation


# instance fields
.field private final disableAccurateStartPoint:Z

.field private final disableLoginOverMsl:Z

.field private final forcedDeviceCategory:Ljava/lang/String;

.field private final getAlertMsgForLocaleSupport:Ljava/lang/String;

.field private final getAppMinVersion:I

.field private final getAppRecommendedVersion:I

.field private final getAppUpdateDialogFreqDays:I

.field private final getAudioFormats:I

.field private final getBreadcrumbLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final getConsolidatedloggingSpecification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final getDisableCastFaststart:Z

.field private final getDisableLicensePrefetch:Z

.field private final getEnableLocalPlayback:Z

.field private final getEnableMdxRemoteControlLockScreen:Z

.field private final getEnableMdxRemoteControlNotification:Z

.field private final getErrorLoggingSpecifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final getGeoCountryCode:Ljava/lang/String;

.field private final getImagePref:Ljava/lang/String;

.field private final getLolomoCacheExpirationOverride:I

.field private final getLolomoPrefetchIntervalOverride:I

.field private final getMaxAppLifeDays:I

.field private final getMdxDisabled:Z

.field private final getMobileOnlyMinVersionCode:I

.field private final getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

.field private final getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

.field private final getPTAggregationSize:Ljava/lang/String;

.field private final getRateLimitForGcmBrowseEvents:I

.field private final getRateLimitForGcmNListChangeEvents:I

.field private final getSignUpTimeout:Ljava/lang/String;

.field private final getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

.field private final getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

.field private final getSuppressedLogblobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getUserSessionTimeoutDuration:I

.field private final getVideoResolutionOverride:I

.field private final getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

.field private final getVoipInstallDeadlineInDays:I

.field private final getWebsocketDisabled:Ljava/lang/String;

.field private final isAllowAv1Mobile:Z

.field private final isAllowHevcMobile:Z

.field private final isAllowVp9Mobile:Z

.field private final isBlacklisted:Z

.field private final isDisableLegacyNetflixMdx:Z

.field private final isDolbyVisionEnabled:Z

.field private final isEnableOfflineSecureDelete:Z

.field private final isEnabledWidevineL3SystemId4266:Z

.field private final isHdr10Enabled:Z

.field private final isHdrBrightnessBoostEnabled:Z

.field private final isMementoEnabledForWorld:Z

.field private final isPhonePortraitLockEnabled:Z

.field private final isPlayBillingDisabled:Z

.field private final isVoipEnabledOnDevice:Z

.field private final isWidevineL1Enabled:Z

.field private final partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

.field private final pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

.field private final shouldAlertForMissingLocale:Z

.field private final shouldDisableAmazonADM:Z

.field private final shouldDisablePip:Z

.field private final shouldDisableRoar:Z

.field private final shouldForceLegacyCrypto:Z

.field private final shouldGetNrmViaMsl:Z

.field private final toIgnorePreloadForPlayBilling:Z


# direct methods
.method constructor <init>(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/util/List;IIIZZZZZIZLjava/lang/String;ZLcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;ZZLjava/lang/String;ZZZZZZZZZLcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;ZZZLcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;ZZZIIZZZZILjava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;IIIZLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;IIIZZZZZIZ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZZZZZZZZ",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;",
            "ZZZ",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;",
            "ZZZIIZZZZI",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;",
            "IIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p24

    move-object/from16 v5, p25

    move-object/from16 v6, p26

    move-object/from16 v7, p39

    move-object/from16 v8, p40

    move-object/from16 v9, p44

    move-object/from16 v10, p56

    move-object/from16 v11, p61

    .line 195
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;-><init>()V

    move v12, p1

    .line 196
    iput v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppMinVersion:I

    move v12, p2

    .line 197
    iput v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppRecommendedVersion:I

    move-object/from16 v12, p3

    .line 198
    iput-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getWebsocketDisabled:Ljava/lang/String;

    move/from16 v12, p4

    .line 199
    iput-boolean v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMdxDisabled:Z

    move-object/from16 v12, p5

    .line 200
    iput-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getImagePref:Ljava/lang/String;

    move-object/from16 v12, p6

    .line 201
    iput-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSignUpTimeout:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 205
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getConsolidatedloggingSpecification:Ljava/util/List;

    move/from16 v1, p8

    .line 206
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getUserSessionTimeoutDuration:I

    move-object/from16 v1, p9

    .line 207
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getPTAggregationSize:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 211
    iput-object v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 215
    iput-object v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getErrorLoggingSpecifications:Ljava/util/List;

    move/from16 v1, p12

    .line 216
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVideoResolutionOverride:I

    move/from16 v1, p13

    .line 217
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmBrowseEvents:I

    move/from16 v1, p14

    .line 218
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmNListChangeEvents:I

    move/from16 v1, p15

    .line 219
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableLocalPlayback:Z

    move/from16 v1, p16

    .line 220
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlLockScreen:Z

    move/from16 v1, p17

    .line 221
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlNotification:Z

    move/from16 v1, p18

    .line 222
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isWidevineL1Enabled:Z

    move/from16 v1, p19

    .line 223
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldForceLegacyCrypto:Z

    move/from16 v1, p20

    .line 224
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAudioFormats:I

    move/from16 v1, p21

    .line 225
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldAlertForMissingLocale:Z

    move-object/from16 v1, p22

    .line 226
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    move/from16 v1, p23

    .line 227
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isVoipEnabledOnDevice:Z

    if-eqz v4, :cond_7

    .line 231
    iput-object v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    if-eqz v5, :cond_6

    .line 235
    iput-object v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    if-eqz v6, :cond_5

    .line 239
    iput-object v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move/from16 v1, p27

    .line 240
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPlayBillingDisabled:Z

    move/from16 v1, p28

    .line 241
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->toIgnorePreloadForPlayBilling:Z

    move-object/from16 v1, p29

    .line 242
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getGeoCountryCode:Ljava/lang/String;

    move/from16 v1, p30

    .line 243
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableCastFaststart:Z

    move/from16 v1, p31

    .line 244
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isMementoEnabledForWorld:Z

    move/from16 v1, p32

    .line 245
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableLicensePrefetch:Z

    move/from16 v1, p33

    .line 246
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableRoar:Z

    move/from16 v1, p34

    .line 247
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowHevcMobile:Z

    move/from16 v1, p35

    .line 248
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowVp9Mobile:Z

    move/from16 v1, p36

    .line 249
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowAv1Mobile:Z

    move/from16 v1, p37

    .line 250
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdr10Enabled:Z

    move/from16 v1, p38

    .line 251
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDolbyVisionEnabled:Z

    if-eqz v7, :cond_4

    .line 255
    iput-object v7, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    if-eqz v8, :cond_3

    .line 259
    iput-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move/from16 v1, p41

    .line 260
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnabledWidevineL3SystemId4266:Z

    move/from16 v1, p42

    .line 261
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDisableLegacyNetflixMdx:Z

    move/from16 v1, p43

    .line 262
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPhonePortraitLockEnabled:Z

    if-eqz v9, :cond_2

    .line 266
    iput-object v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move/from16 v1, p45

    .line 267
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isBlacklisted:Z

    move/from16 v1, p46

    .line 268
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnableOfflineSecureDelete:Z

    move/from16 v1, p47

    .line 269
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableLoginOverMsl:Z

    move/from16 v1, p48

    .line 270
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoPrefetchIntervalOverride:I

    move/from16 v1, p49

    .line 271
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoCacheExpirationOverride:I

    move/from16 v1, p50

    .line 272
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableAccurateStartPoint:Z

    move/from16 v1, p51

    .line 273
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisablePip:Z

    move/from16 v1, p52

    .line 274
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableAmazonADM:Z

    move/from16 v1, p53

    .line 275
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldGetNrmViaMsl:Z

    move/from16 v1, p54

    .line 276
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipInstallDeadlineInDays:I

    move-object/from16 v1, p55

    .line 277
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->forcedDeviceCategory:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 281
    iput-object v10, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move/from16 v1, p57

    .line 282
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMaxAppLifeDays:I

    move/from16 v1, p58

    .line 283
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppUpdateDialogFreqDays:I

    move/from16 v1, p59

    .line 284
    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMobileOnlyMinVersionCode:I

    move/from16 v1, p60

    .line 285
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdrBrightnessBoostEnabled:Z

    if-eqz v11, :cond_0

    .line 289
    iput-object v11, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSuppressedLogblobs:Ljava/util/List;

    return-void

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getSuppressedLogblobs"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null partnerIntegrationConfig"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null pdsAndLogblobConfig"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getOfflineCodecPrefData"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getStreamingCodecPrefData"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getSubtitleDownloadRetryPolicy"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getOfflineConfig"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getVoipConfiguration"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getErrorLoggingSpecifications"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getBreadcrumbLoggingSpecifications"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null getConsolidatedloggingSpecification"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public disableAccurateStartPoint()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAccurateStartPoint"
    .end annotation

    .line 595
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableAccurateStartPoint:Z

    return v0
.end method

.method public disableLoginOverMsl()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableLoginOverMsl"
    .end annotation

    .line 577
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableLoginOverMsl:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 737
    :cond_0
    instance-of v1, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 738
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 739
    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppMinVersion:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppMinVersion()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppRecommendedVersion:I

    .line 740
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppRecommendedVersion()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getWebsocketDisabled:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 741
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getWebsocketDisabled()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMdxDisabled:Z

    .line 742
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMdxDisabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getImagePref:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 743
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getImagePref()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSignUpTimeout:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 744
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSignUpTimeout()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getConsolidatedloggingSpecification:Ljava/util/List;

    .line 745
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getConsolidatedloggingSpecification()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getUserSessionTimeoutDuration:I

    .line 746
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getUserSessionTimeoutDuration()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getPTAggregationSize:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 747
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getPTAggregationSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    .line 748
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getBreadcrumbLoggingSpecifications()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getErrorLoggingSpecifications:Ljava/util/List;

    .line 749
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getErrorLoggingSpecifications()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVideoResolutionOverride:I

    .line 750
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVideoResolutionOverride()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmBrowseEvents:I

    .line 751
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmBrowseEvents()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmNListChangeEvents:I

    .line 752
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getRateLimitForGcmNListChangeEvents()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableLocalPlayback:Z

    .line 753
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableLocalPlayback()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlLockScreen:Z

    .line 754
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlLockScreen()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlNotification:Z

    .line 755
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getEnableMdxRemoteControlNotification()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isWidevineL1Enabled:Z

    .line 756
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isWidevineL1Enabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldForceLegacyCrypto:Z

    .line 757
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldForceLegacyCrypto()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAudioFormats:I

    .line 758
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAudioFormats()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldAlertForMissingLocale:Z

    .line 759
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldAlertForMissingLocale()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 760
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAlertMsgForLocaleSupport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isVoipEnabledOnDevice:Z

    .line 761
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isVoipEnabledOnDevice()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    .line 762
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    .line 763
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 764
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPlayBillingDisabled:Z

    .line 765
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPlayBillingDisabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->toIgnorePreloadForPlayBilling:Z

    .line 766
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->toIgnorePreloadForPlayBilling()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getGeoCountryCode:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 767
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getGeoCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableCastFaststart:Z

    .line 768
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableCastFaststart()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isMementoEnabledForWorld:Z

    .line 769
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isMementoEnabledForWorld()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableLicensePrefetch:Z

    .line 770
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getDisableLicensePrefetch()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableRoar:Z

    .line 771
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableRoar()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowHevcMobile:Z

    .line 772
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowHevcMobile()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowVp9Mobile:Z

    .line 773
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowVp9Mobile()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowAv1Mobile:Z

    .line 774
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isAllowAv1Mobile()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdr10Enabled:Z

    .line 775
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdr10Enabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDolbyVisionEnabled:Z

    .line 776
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDolbyVisionEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    .line 777
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    .line 778
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnabledWidevineL3SystemId4266:Z

    .line 779
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnabledWidevineL3SystemId4266()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDisableLegacyNetflixMdx:Z

    .line 780
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isDisableLegacyNetflixMdx()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPhonePortraitLockEnabled:Z

    .line 781
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isPhonePortraitLockEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    .line 782
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isBlacklisted:Z

    .line 783
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isBlacklisted()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnableOfflineSecureDelete:Z

    .line 784
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isEnableOfflineSecureDelete()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableLoginOverMsl:Z

    .line 785
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableLoginOverMsl()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoPrefetchIntervalOverride:I

    .line 786
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoPrefetchIntervalOverride()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoCacheExpirationOverride:I

    .line 787
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getLolomoCacheExpirationOverride()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableAccurateStartPoint:Z

    .line 788
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->disableAccurateStartPoint()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisablePip:Z

    .line 789
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisablePip()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableAmazonADM:Z

    .line 790
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldDisableAmazonADM()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldGetNrmViaMsl:Z

    .line 791
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->shouldGetNrmViaMsl()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipInstallDeadlineInDays:I

    .line 792
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getVoipInstallDeadlineInDays()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->forcedDeviceCategory:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 793
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forcedDeviceCategory()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->forcedDeviceCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_6
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    .line 794
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMaxAppLifeDays:I

    .line 795
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMaxAppLifeDays()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppUpdateDialogFreqDays:I

    .line 796
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getAppUpdateDialogFreqDays()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMobileOnlyMinVersionCode:I

    .line 797
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getMobileOnlyMinVersionCode()I

    move-result v3

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdrBrightnessBoostEnabled:Z

    .line 798
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->isHdrBrightnessBoostEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSuppressedLogblobs:Ljava/util/List;

    .line 799
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;->getSuppressedLogblobs()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_9
    return v2
.end method

.method public forcedDeviceCategory()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forcedDeviceCategory"
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->forcedDeviceCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertMsgForLocaleSupport()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alertMsgForLocaleSupport"
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    return-object v0
.end method

.method public getAppMinVersion()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_version"
    .end annotation

    .line 295
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppMinVersion:I

    return v0
.end method

.method public getAppRecommendedVersion()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_version"
    .end annotation

    .line 301
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppRecommendedVersion:I

    return v0
.end method

.method public getAppUpdateDialogFreqDays()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appUpdateDialogFreqDays"
    .end annotation

    .line 644
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppUpdateDialogFreqDays:I

    return v0
.end method

.method public getAudioFormats()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioFormats"
    .end annotation

    .line 413
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAudioFormats:I

    return v0
.end method

.method public getBreadcrumbLoggingSpecifications()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "breadcrumb_logging_config"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/BreadcrumbLoggingSpecification;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    return-object v0
.end method

.method public getConsolidatedloggingSpecification()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consolidated_logging_specification"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConsolidatedLoggingSessionSpecification;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getConsolidatedloggingSpecification:Ljava/util/List;

    return-object v0
.end method

.method public getDisableCastFaststart()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableCastFaststart"
    .end annotation

    .line 475
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableCastFaststart:Z

    return v0
.end method

.method public getDisableLicensePrefetch()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableLicensePrefetch"
    .end annotation

    .line 487
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableLicensePrefetch:Z

    return v0
.end method

.method public getEnableLocalPlayback()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableLocalPlayback"
    .end annotation

    .line 383
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableLocalPlayback:Z

    return v0
.end method

.method public getEnableMdxRemoteControlLockScreen()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlLockScreen"
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlLockScreen:Z

    return v0
.end method

.method public getEnableMdxRemoteControlNotification()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableMdxRemoteControlNotification"
    .end annotation

    .line 395
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlNotification:Z

    return v0
.end method

.method public getErrorLoggingSpecifications()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_logging_config"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/ErrorLoggingSpecification;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getErrorLoggingSpecifications:Ljava/util/List;

    return-object v0
.end method

.method public getGeoCountryCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geoCountryCode"
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getGeoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePref()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_pref"
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getImagePref:Ljava/lang/String;

    return-object v0
.end method

.method public getLolomoCacheExpirationOverride()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lolomoCacheExpirationOverride"
    .end annotation

    .line 589
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoCacheExpirationOverride:I

    return v0
.end method

.method public getLolomoPrefetchIntervalOverride()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lolomoPrefetchIntervalOverride"
    .end annotation

    .line 583
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoPrefetchIntervalOverride:I

    return v0
.end method

.method public getMaxAppLifeDays()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAppLifeDays"
    .end annotation

    .line 638
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMaxAppLifeDays:I

    return v0
.end method

.method public getMdxDisabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disable_mdx"
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMdxDisabled:Z

    return v0
.end method

.method public getMobileOnlyMinVersionCode()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileOnlyMinVersionCode"
    .end annotation

    .line 650
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMobileOnlyMinVersionCode:I

    return v0
.end method

.method public getOfflineCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlineCodecPrefData"
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    return-object v0
.end method

.method public getOfflineConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlineConfig"
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    return-object v0
.end method

.method public getPTAggregationSize()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pt_aggregation_size"
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getPTAggregationSize:Ljava/lang/String;

    return-object v0
.end method

.method public getRateLimitForGcmBrowseEvents()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmBrowseEventRateLimitInSecs"
    .end annotation

    .line 371
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmBrowseEvents:I

    return v0
.end method

.method public getRateLimitForGcmNListChangeEvents()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gcmNListChangeEventRateLimitInSecs"
    .end annotation

    .line 377
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmNListChangeEvents:I

    return v0
.end method

.method public getSignUpTimeout()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signup_timeout"
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSignUpTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingCodecPrefData()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "streamingCodecPrefData"
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    return-object v0
.end method

.method public getSubtitleDownloadRetryPolicy()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleDownloadRetryPolicy"
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    return-object v0
.end method

.method public getSuppressedLogblobs()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suppressedLogblobs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSuppressedLogblobs:Ljava/util/List;

    return-object v0
.end method

.method public getUserSessionTimeoutDuration()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_session_timeout_duration"
    .end annotation

    .line 340
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getUserSessionTimeoutDuration:I

    return v0
.end method

.method public getVideoResolutionOverride()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoResolutionOverride"
    .end annotation

    .line 365
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVideoResolutionOverride:I

    return v0
.end method

.method public getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipConfig"
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    return-object v0
.end method

.method public getVoipInstallDeadlineInDays()I
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipInstallDeadlineInDays"
    .end annotation

    .line 619
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipInstallDeadlineInDays:I

    return v0
.end method

.method public getWebsocketDisabled()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disable_websocket"
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getWebsocketDisabled:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 808
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppMinVersion:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 810
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppRecommendedVersion:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 812
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getWebsocketDisabled:Ljava/lang/String;

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

    .line 814
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMdxDisabled:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 816
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getImagePref:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 818
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSignUpTimeout:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 820
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getConsolidatedloggingSpecification:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 822
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getUserSessionTimeoutDuration:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 824
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getPTAggregationSize:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 826
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 828
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getErrorLoggingSpecifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 830
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVideoResolutionOverride:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 832
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmBrowseEvents:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 834
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmNListChangeEvents:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 836
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableLocalPlayback:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x4cf

    goto :goto_5

    :cond_5
    const/16 v2, 0x4d5

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 838
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlLockScreen:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v2, 0x4d5

    :goto_6
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 840
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlNotification:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x4cf

    goto :goto_7

    :cond_7
    const/16 v2, 0x4d5

    :goto_7
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 842
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isWidevineL1Enabled:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x4cf

    goto :goto_8

    :cond_8
    const/16 v2, 0x4d5

    :goto_8
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 844
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldForceLegacyCrypto:Z

    if-eqz v2, :cond_9

    const/16 v2, 0x4cf

    goto :goto_9

    :cond_9
    const/16 v2, 0x4d5

    :goto_9
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 846
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAudioFormats:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 848
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldAlertForMissingLocale:Z

    if-eqz v2, :cond_a

    const/16 v2, 0x4cf

    goto :goto_a

    :cond_a
    const/16 v2, 0x4d5

    :goto_a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 850
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 852
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isVoipEnabledOnDevice:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x4cf

    goto :goto_c

    :cond_c
    const/16 v2, 0x4d5

    :goto_c
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 854
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 856
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 858
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 860
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPlayBillingDisabled:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x4cf

    goto :goto_d

    :cond_d
    const/16 v2, 0x4d5

    :goto_d
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 862
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->toIgnorePreloadForPlayBilling:Z

    if-eqz v2, :cond_e

    const/16 v2, 0x4cf

    goto :goto_e

    :cond_e
    const/16 v2, 0x4d5

    :goto_e
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 864
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getGeoCountryCode:Ljava/lang/String;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 866
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableCastFaststart:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x4cf

    goto :goto_10

    :cond_10
    const/16 v2, 0x4d5

    :goto_10
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 868
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isMementoEnabledForWorld:Z

    if-eqz v2, :cond_11

    const/16 v2, 0x4cf

    goto :goto_11

    :cond_11
    const/16 v2, 0x4d5

    :goto_11
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 870
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableLicensePrefetch:Z

    if-eqz v2, :cond_12

    const/16 v2, 0x4cf

    goto :goto_12

    :cond_12
    const/16 v2, 0x4d5

    :goto_12
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 872
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableRoar:Z

    if-eqz v2, :cond_13

    const/16 v2, 0x4cf

    goto :goto_13

    :cond_13
    const/16 v2, 0x4d5

    :goto_13
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 874
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowHevcMobile:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x4cf

    goto :goto_14

    :cond_14
    const/16 v2, 0x4d5

    :goto_14
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 876
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowVp9Mobile:Z

    if-eqz v2, :cond_15

    const/16 v2, 0x4cf

    goto :goto_15

    :cond_15
    const/16 v2, 0x4d5

    :goto_15
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 878
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowAv1Mobile:Z

    if-eqz v2, :cond_16

    const/16 v2, 0x4cf

    goto :goto_16

    :cond_16
    const/16 v2, 0x4d5

    :goto_16
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 880
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdr10Enabled:Z

    if-eqz v2, :cond_17

    const/16 v2, 0x4cf

    goto :goto_17

    :cond_17
    const/16 v2, 0x4d5

    :goto_17
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 882
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDolbyVisionEnabled:Z

    if-eqz v2, :cond_18

    const/16 v2, 0x4cf

    goto :goto_18

    :cond_18
    const/16 v2, 0x4d5

    :goto_18
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 884
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 886
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 888
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnabledWidevineL3SystemId4266:Z

    if-eqz v2, :cond_19

    const/16 v2, 0x4cf

    goto :goto_19

    :cond_19
    const/16 v2, 0x4d5

    :goto_19
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 890
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDisableLegacyNetflixMdx:Z

    if-eqz v2, :cond_1a

    const/16 v2, 0x4cf

    goto :goto_1a

    :cond_1a
    const/16 v2, 0x4d5

    :goto_1a
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 892
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPhonePortraitLockEnabled:Z

    if-eqz v2, :cond_1b

    const/16 v2, 0x4cf

    goto :goto_1b

    :cond_1b
    const/16 v2, 0x4d5

    :goto_1b
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 894
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 896
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isBlacklisted:Z

    if-eqz v2, :cond_1c

    const/16 v2, 0x4cf

    goto :goto_1c

    :cond_1c
    const/16 v2, 0x4d5

    :goto_1c
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 898
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnableOfflineSecureDelete:Z

    if-eqz v2, :cond_1d

    const/16 v2, 0x4cf

    goto :goto_1d

    :cond_1d
    const/16 v2, 0x4d5

    :goto_1d
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 900
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableLoginOverMsl:Z

    if-eqz v2, :cond_1e

    const/16 v2, 0x4cf

    goto :goto_1e

    :cond_1e
    const/16 v2, 0x4d5

    :goto_1e
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 902
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoPrefetchIntervalOverride:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 904
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoCacheExpirationOverride:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 906
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableAccurateStartPoint:Z

    if-eqz v2, :cond_1f

    const/16 v2, 0x4cf

    goto :goto_1f

    :cond_1f
    const/16 v2, 0x4d5

    :goto_1f
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 908
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisablePip:Z

    if-eqz v2, :cond_20

    const/16 v2, 0x4cf

    goto :goto_20

    :cond_20
    const/16 v2, 0x4d5

    :goto_20
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 910
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableAmazonADM:Z

    if-eqz v2, :cond_21

    const/16 v2, 0x4cf

    goto :goto_21

    :cond_21
    const/16 v2, 0x4d5

    :goto_21
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 912
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldGetNrmViaMsl:Z

    if-eqz v2, :cond_22

    const/16 v2, 0x4cf

    goto :goto_22

    :cond_22
    const/16 v2, 0x4d5

    :goto_22
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 914
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipInstallDeadlineInDays:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 916
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->forcedDeviceCategory:Ljava/lang/String;

    if-nez v2, :cond_23

    goto :goto_23

    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_23
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 918
    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 920
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMaxAppLifeDays:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 922
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppUpdateDialogFreqDays:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 924
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMobileOnlyMinVersionCode:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 926
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdrBrightnessBoostEnabled:Z

    if-eqz v2, :cond_24

    goto :goto_24

    :cond_24
    const/16 v4, 0x4d5

    :goto_24
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 928
    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSuppressedLogblobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAllowAv1Mobile()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowAv1Mobile"
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowAv1Mobile:Z

    return v0
.end method

.method public isAllowHevcMobile()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowHevcMobile"
    .end annotation

    .line 499
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowHevcMobile:Z

    return v0
.end method

.method public isAllowVp9Mobile()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowVp9Mobile"
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowVp9Mobile:Z

    return v0
.end method

.method public isBlacklisted()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isBlacklisted"
    .end annotation

    .line 565
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isBlacklisted:Z

    return v0
.end method

.method public isDisableLegacyNetflixMdx()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableLegacyNetflixMdx"
    .end annotation

    .line 547
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDisableLegacyNetflixMdx:Z

    return v0
.end method

.method public isDolbyVisionEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableDolbyVision"
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDolbyVisionEnabled:Z

    return v0
.end method

.method public isEnableOfflineSecureDelete()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableOfflineSecureDelete"
    .end annotation

    .line 571
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnableOfflineSecureDelete:Z

    return v0
.end method

.method public isEnabledWidevineL3SystemId4266()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableWidevineL3SystemId4266"
    .end annotation

    .line 541
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnabledWidevineL3SystemId4266:Z

    return v0
.end method

.method public isHdr10Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableHdr10"
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdr10Enabled:Z

    return v0
.end method

.method public isHdrBrightnessBoostEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableHdrBrightnessBoost"
    .end annotation

    .line 656
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdrBrightnessBoostEnabled:Z

    return v0
.end method

.method public isMementoEnabledForWorld()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mementoEnabledForWorld"
    .end annotation

    .line 481
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isMementoEnabledForWorld:Z

    return v0
.end method

.method public isPhonePortraitLockEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lockPhonePortraitEnabled"
    .end annotation

    .line 553
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPhonePortraitLockEnabled:Z

    return v0
.end method

.method public isPlayBillingDisabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disablePlayBilling"
    .end annotation

    .line 456
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPlayBillingDisabled:Z

    return v0
.end method

.method public isVoipEnabledOnDevice()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipEnabledOnDevice"
    .end annotation

    .line 432
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isVoipEnabledOnDevice:Z

    return v0
.end method

.method public isWidevineL1Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableWidevineL1"
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isWidevineL1Enabled:Z

    return v0
.end method

.method public partnerIntegrationConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "partnerIntegrationConfig"
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    return-object v0
.end method

.method public pdsAndLogblobConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pdsAndLogblobConfig"
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    return-object v0
.end method

.method public shouldAlertForMissingLocale()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldAlertForLocaleSupport"
    .end annotation

    .line 419
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldAlertForMissingLocale:Z

    return v0
.end method

.method public shouldDisableAmazonADM()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableAmazonADM"
    .end annotation

    .line 607
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableAmazonADM:Z

    return v0
.end method

.method public shouldDisablePip()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disablePip"
    .end annotation

    .line 601
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisablePip:Z

    return v0
.end method

.method public shouldDisableRoar()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableRoar"
    .end annotation

    .line 493
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableRoar:Z

    return v0
.end method

.method public shouldForceLegacyCrypto()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "forceLegacyCrypto"
    .end annotation

    .line 407
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldForceLegacyCrypto:Z

    return v0
.end method

.method public shouldGetNrmViaMsl()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nrmViaMsl"
    .end annotation

    .line 613
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldGetNrmViaMsl:Z

    return v0
.end method

.method public toBuilder()Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData$Builder;
    .locals 2

    .line 934
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$Builder;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData$1;)V

    return-object v0
.end method

.method public toIgnorePreloadForPlayBilling()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignorePreloadForPlayBilling"
    .end annotation

    .line 462
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->toIgnorePreloadForPlayBilling:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceConfigData{getAppMinVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppMinVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getAppRecommendedVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppRecommendedVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getWebsocketDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getWebsocketDisabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getMdxDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMdxDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getImagePref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getImagePref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getSignUpTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSignUpTimeout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getConsolidatedloggingSpecification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getConsolidatedloggingSpecification:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getUserSessionTimeoutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getUserSessionTimeoutDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getPTAggregationSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getPTAggregationSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getBreadcrumbLoggingSpecifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getBreadcrumbLoggingSpecifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getErrorLoggingSpecifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getErrorLoggingSpecifications:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getVideoResolutionOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVideoResolutionOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getRateLimitForGcmBrowseEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmBrowseEvents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getRateLimitForGcmNListChangeEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getRateLimitForGcmNListChangeEvents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getEnableLocalPlayback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableLocalPlayback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getEnableMdxRemoteControlLockScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlLockScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getEnableMdxRemoteControlNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getEnableMdxRemoteControlNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWidevineL1Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isWidevineL1Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldForceLegacyCrypto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldForceLegacyCrypto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getAudioFormats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAudioFormats:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shouldAlertForMissingLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldAlertForMissingLocale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getAlertMsgForLocaleSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAlertMsgForLocaleSupport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVoipEnabledOnDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isVoipEnabledOnDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getVoipConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipConfiguration:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getOfflineConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getSubtitleDownloadRetryPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSubtitleDownloadRetryPolicy:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlayBillingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPlayBillingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", toIgnorePreloadForPlayBilling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->toIgnorePreloadForPlayBilling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getGeoCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getGeoCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", getDisableCastFaststart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableCastFaststart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMementoEnabledForWorld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isMementoEnabledForWorld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getDisableLicensePrefetch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getDisableLicensePrefetch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisableRoar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableRoar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowHevcMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowHevcMobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowVp9Mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowVp9Mobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAllowAv1Mobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isAllowAv1Mobile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHdr10Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdr10Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDolbyVisionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDolbyVisionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getStreamingCodecPrefData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getStreamingCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingCodecPrefData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getOfflineCodecPrefData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getOfflineCodecPrefData:Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineCodecPrefData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabledWidevineL3SystemId4266="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnabledWidevineL3SystemId4266:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisableLegacyNetflixMdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isDisableLegacyNetflixMdx:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPhonePortraitLockEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isPhonePortraitLockEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pdsAndLogblobConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->pdsAndLogblobConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PdsAndLogblobConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBlacklisted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isBlacklisted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEnableOfflineSecureDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isEnableOfflineSecureDelete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disableLoginOverMsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableLoginOverMsl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getLolomoPrefetchIntervalOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoPrefetchIntervalOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getLolomoCacheExpirationOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getLolomoCacheExpirationOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableAccurateStartPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->disableAccurateStartPoint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisablePip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisablePip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisableAmazonADM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldDisableAmazonADM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldGetNrmViaMsl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->shouldGetNrmViaMsl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getVoipInstallDeadlineInDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getVoipInstallDeadlineInDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forcedDeviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->forcedDeviceCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", partnerIntegrationConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->partnerIntegrationConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getMaxAppLifeDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMaxAppLifeDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getAppUpdateDialogFreqDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getAppUpdateDialogFreqDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getMobileOnlyMinVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getMobileOnlyMinVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHdrBrightnessBoostEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->isHdrBrightnessBoostEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", getSuppressedLogblobs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/$AutoValue_DeviceConfigData;->getSuppressedLogblobs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
