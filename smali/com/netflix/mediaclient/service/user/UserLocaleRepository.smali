.class public final Lcom/netflix/mediaclient/service/user/UserLocaleRepository;
.super Ljava/lang/Object;
.source "UserLocaleRepository.java"


# static fields
.field private static final LANGUAGE_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "nf_loc"


# instance fields
.field private currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

.field private preferredLanguages:Ljava/lang/String;

.field private supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->initSupportedLocales()V

    .line 61
    return-void
.end method

.method private findBestMatch(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 189
    .line 190
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->toUserLocales(Ljava/lang/String;)[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v4

    .line 191
    array-length v1, v4

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 192
    const-string/jumbo v1, "nf_loc"

    const-string/jumbo v2, "Empty list of preferred languages, set default"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 196
    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_a

    .line 197
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const-string/jumbo v1, "nf_loc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Choice #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 200
    :goto_2
    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 201
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    const-string/jumbo v5, "nf_loc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Try to match by locale with #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    aget-object v5, v4, v3

    if-eqz v5, :cond_8

    aget-object v5, v4, v3

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v4, v3

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 205
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 206
    const-string/jumbo v5, "nf_loc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Match by locale with #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_5
    aget-object v5, v4, v3

    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 210
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    const-string/jumbo v0, "nf_loc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Perfect Match by locale with #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 216
    :cond_7
    if-nez v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aget-object v0, v0, v1

    .line 200
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 196
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 223
    :cond_a
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string/jumbo v1, "nf_loc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findBestMatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v0, "alertedLanguages"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    if-eqz v0, :cond_0

    .line 332
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 334
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    return-object v1
.end method

.method public static getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 4

    .prologue
    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 377
    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private initSupportedLocales()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 69
    const/16 v1, 0x1e

    .line 70
    new-array v1, v1, [Lcom/netflix/mediaclient/util/l10n/UserLocale;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 71
    new-instance v1, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "English"

    invoke-direct {v1, v2, v7, v3}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    aput-object v2, v1, v0

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x1

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Fran\u00e7ais"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 74
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x2

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "es"

    const-string/jumbo v5, "Espa\u00f1ol"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x3

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "pt"

    const-string/jumbo v5, "Portugu\u00eas"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x4

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "English-GB"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 77
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x5

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "IE"

    const-string/jumbo v6, "English-IE"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 78
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x6

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "sv"

    const-string/jumbo v5, "Svenskt"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 79
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/4 v2, 0x7

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "nb"

    const-string/jumbo v5, "Norske"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x8

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "da"

    const-string/jumbo v5, "Dansk"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x9

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "fi"

    const-string/jumbo v5, "Suomi"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 82
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xa

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "nl"

    const-string/jumbo v5, "Nederlands"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xb

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Fran\u00e7ais-CA"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xc

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Deutsch"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xd

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AU"

    const-string/jumbo v6, "English-AU"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xe

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "NZ"

    const-string/jumbo v6, "English-NZ"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0xf

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u65e5\u672c\u8a9e"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x10

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "italiano"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x11

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "pt"

    const-string/jumbo v5, "PT"

    const-string/jumbo v6, "Portugu\u00eas-PT"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x12

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "es"

    const-string/jumbo v5, "ES"

    const-string/jumbo v6, "espa\u00f1ol-ES"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 91
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x13

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "ar"

    const-string/jumbo v5, "MA"

    const-string/jumbo v6, "Arabic"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 92
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x14

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\ud55c\uad6d\uc5b4/\uc870\uc120\ub9d0"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x15

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u7b80\u5316\u5b57"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x16

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57;"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 95
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x17

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SG"

    const-string/jumbo v6, "\u7b80\u5316\u5b57"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x18

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MO"

    const-string/jumbo v6, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57;"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 97
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x19

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "HK"

    const-string/jumbo v6, "\u6b63\u9ad4\u5b57/\u7e41\u9ad4\u5b57;"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x1a

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u7b80\u5316\u5b57"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x1b

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "es"

    const-string/jumbo v5, "AD"

    const-string/jumbo v6, "espa\u00f1ol-AD"

    invoke-direct {v3, v4, v5, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x1c

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "tr"

    const-string/jumbo v5, "T\u00fcrk\u00e7e"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const/16 v2, 0x1d

    new-instance v3, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    const-string/jumbo v4, "pl"

    const-string/jumbo v5, "polszczyzna"

    invoke-direct {v3, v4, v7, v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 103
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 107
    const-string/jumbo v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    invoke-virtual {v5}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const-string/jumbo v1, "nf_loc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "List of supported locales: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 114
    const-string/jumbo v4, "nf_loc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    return-void
.end method

.method public static isApkMissingDeviceLocaleSupport()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v3

    .line 363
    new-instance v2, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;-><init>()V

    .line 365
    const/4 v1, 0x1

    .line 366
    iget-object v4, v2, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 367
    invoke-virtual {v3, v6}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equalsByLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    :goto_1
    return v0

    .line 366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static setAlertedLanguage(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 341
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "skip setAlertedLanguage - was previously alerted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 347
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 354
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v2, "alerted languages: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_2
    const-string/jumbo v0, "alertedLanguages"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private toArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 263
    .line 264
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v1, ","

    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 266
    new-array v0, v0, [Ljava/lang/String;

    .line 276
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 272
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 276
    goto :goto_0
.end method

.method private toUserLocales(Ljava/lang/String;)[Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 236
    .line 237
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v1, ","

    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 239
    new-array v0, v0, [Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 253
    :goto_0
    return-object v0

    .line 241
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v2, v1, [Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 245
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    new-instance v4, Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;-><init>(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v1, v0, 0x1

    aput-object v4, v2, v0

    .line 248
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string/jumbo v0, "nf_loc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Preffered locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 251
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 253
    goto :goto_0
.end method

.method public static wasPreviouslyAlerted(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getAlertedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 382
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v4

    .line 384
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-virtual {v4}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    const-string/jumbo v4, "nf_loc"

    const-string/jumbo v5, "previously alerted - %s already in alerted list: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 392
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    return-object v0
.end method

.method public getDefaultAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    return-object v0
.end method

.method public getPreferredLanguages()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredLanguagesAsArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 137
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->toArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedLocales()[Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->supportedLocales:[Lcom/netflix/mediaclient/util/l10n/UserLocale;

    return-object v0
.end method

.method public isPreferredLanguagesSet()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string/jumbo v0, "nf_loc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Keeping same application locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getRaw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const-string/jumbo v0, "nf_loc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change locale from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->currentAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    goto :goto_0
.end method

.method public setPreferredLanguages(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    const-string/jumbo v0, "nf_loc"

    const-string/jumbo v1, "Empty list of preferred languages, set to default"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string/jumbo p1, ""

    .line 152
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->preferredLanguages:Ljava/lang/String;

    .line 153
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->findBestMatch(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    const-string/jumbo v0, "nf_loc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Match is not found under application supported languages for prefered languages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Default to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->defaultAppLocale:Lcom/netflix/mediaclient/util/l10n/UserLocale;

    .line 159
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setApplicationLanguage(Lcom/netflix/mediaclient/util/l10n/UserLocale;)V

    .line 160
    return-void
.end method
