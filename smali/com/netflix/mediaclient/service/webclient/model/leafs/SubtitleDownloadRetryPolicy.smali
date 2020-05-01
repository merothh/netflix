.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
.super Ljava/lang/Object;
.source "SubtitleDownloadRetryPolicy.java"


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MS:I = 0x2710

.field public static final DEFAULT_MAX_ELAPSED_TIME_MS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 2.0

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private initialIntervalInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initialIntervalInMs"
    .end annotation
.end field

.field private maxElapsedTimeInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxElapsedTimeInMs"
    .end annotation
.end field

.field private maxIntervalInMs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxIntervalInMs"
    .end annotation
.end field

.field private multiplier:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiplier"
    .end annotation
.end field

.field private randomizationFactor:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "randomizationFactor"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x2710

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    .line 57
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    .line 63
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    .line 69
    const v0, 0xea60

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;-><init>()V

    return-object v0
.end method

.method public static loadFromPreferences(Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 110
    .line 111
    const-string/jumbo v0, "breadcrumb_log_configuration"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Breadcrumb specification not found in file system"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 125
    :goto_0
    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0

    .line 117
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Breadcrumb logging specification loaded from file system"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 121
    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to load Breadcrumb logging specification from file system"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static saveToPreferences(Lcom/netflix/mediaclient/util/NetflixPreference;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;
    .locals 2

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string/jumbo v0, "subtitle_download_retry_policy"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    .line 143
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Subtitle retry policy not found, return default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    move-result-object p1

    .line 150
    :goto_0
    return-object p1

    .line 146
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "subtitle_download_retry_policy"

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 169
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;

    .line 171
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    iget v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    if-ne v2, v3, :cond_0

    .line 172
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-wide v2, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    .line 174
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    iget v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    if-ne v2, v3, :cond_0

    .line 175
    iget v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    iget v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getInitialIntervalInMs()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    return v0
.end method

.method public getMaxElapsedTimeInMs()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    return v0
.end method

.method public getMaxIntervalInMs()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    return v0
.end method

.method public getMultiplier()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    return-wide v0
.end method

.method public getRandomizationFactor()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 183
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    .line 184
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 185
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 186
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    add-int/2addr v0, v1

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    add-int/2addr v0, v1

    .line 190
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubtitleDownloadRetryPolicy{initialIntervalInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->initialIntervalInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", randomizationFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->randomizationFactor:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", multiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->multiplier:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxIntervalInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxIntervalInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxElapsedTimeInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitleDownloadRetryPolicy;->maxElapsedTimeInMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
