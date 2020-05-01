.class public final Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;
.super Ljava/lang/Object;
.source "SignUpConfiguration.java"


# static fields
.field private static BASE_BOOTLOADER_URL:Ljava/lang/String; = null

.field public static final DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

.field public static final SIGNUP_TIMEOUT_MS:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "nf_service_configuration_signuppref"

.field private static mSignUpBootloader:Ljava/lang/String;


# instance fields
.field private mIsSignUpEnabled:Z

.field private mSignUpTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getBootloaderUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpBootloader:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "signup_enabled"

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    const-string/jumbo v0, "signup_timeout"

    const-wide/32 v2, 0x1d4c0

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    const-string/jumbo v0, "nf_service_configuration_signuppref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SignUpConfiguration Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static clearRecords(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "signup_enabled"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    const-string/jumbo v1, "signup_timeout"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    return-void
.end method


# virtual methods
.method public getSignUpBootloader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpBootloader:Ljava/lang/String;

    return-object v0
.end method

.method public getSignUpTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    return-wide v0
.end method

.method public isSignEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    return v0
.end method

.method public setIsSignEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    return-void
.end method

.method public setSignUpTimeout(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    return-void
.end method

.method public update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    const-string/jumbo v0, "signup_enabled"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    :goto_0
    if-eqz p3, :cond_3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    const-string/jumbo v0, "signup_timeout"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    :goto_1
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->BASE_BOOTLOADER_URL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpBootloader:Ljava/lang/String;

    const-string/jumbo v0, "nf_service_configuration_signuppref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSignUpBootloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpBootloader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nf_service_configuration_signuppref"

    const-string/jumbo v1, "SignUp parameters overriden SignUpEnabled: %s, timeout:%s, bootUrl:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->DEFAULT_SIGNUP_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mIsSignUpEnabled:Z

    const-string/jumbo v0, "signup_enabled"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/configuration/SignUpConfiguration;->mSignUpTimeout:J

    const-string/jumbo v0, "signup_timeout"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    goto :goto_1
.end method
