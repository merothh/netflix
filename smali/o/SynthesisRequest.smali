.class public final Lo/SynthesisRequest;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lo/TtsEngines;

.field private final d:Lo/SystemTextClassifier;

.field private final e:Lo/SynthesisCallback;


# direct methods
.method public constructor <init>(Lo/SynthesisCallback;Lo/TtsEngines;Ljava/lang/String;Ljava/lang/String;Lo/SystemTextClassifier;)V
    .locals 1

    const-string v0, "formFieldViewModelCacheSynchronizer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formFieldViewModelFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageKey"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupErrorReporter"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SynthesisRequest;->e:Lo/SynthesisCallback;

    iput-object p2, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iput-object p3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    iput-object p4, p0, Lo/SynthesisRequest;->a:Ljava/lang/String;

    iput-object p5, p0, Lo/SynthesisRequest;->d:Lo/SystemTextClassifier;

    return-void
.end method

.method private final a(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->CREDIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    const-string v1, "creditExpirationMonth"

    const-string v2, "creditExpirationYear"

    invoke-direct {p0, p1, v0, v1, v2}, Lo/SynthesisRequest;->c(Ljava/util/List;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lo/SynthesisRequest;)Lo/TtsEngines;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    return-object p0
.end method

.method private final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lo/SynthesisPlaybackQueueItem;

    instance-of v3, v3, Lo/VoiceInteractionService;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lo/VoiceInteractionService;

    if-nez v0, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lo/VoiceInteractionService;

    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/SynthesisPlaybackQueueItem;

    instance-of v3, v3, Lo/VoiceInteractionSession;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    instance-of p1, v0, Lo/VoiceInteractionSession;

    if-nez p1, :cond_5

    move-object v0, v2

    :cond_5
    check-cast v0, Lo/VoiceInteractionSession;

    .line 43
    sget-object p1, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;->c:Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$linkDataConnectedViewModels$1;

    check-cast p1, Lo/alN;

    invoke-static {v1, v0, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method private final c(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;->DEBIT:Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;

    const-string v1, "debitCardExpirationMonth"

    const-string v2, "debitCardExpirationYear"

    invoke-direct {p0, p1, v0, v1, v2}, Lo/SynthesisRequest;->c(Ljava/util/List;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object p1

    return-object p1
.end method

.method private final c(Ljava/util/List;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;"
        }
    .end annotation

    .line 79
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p3, v1, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p3, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/netflix/android/moneyball/fields/NumberField;

    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_4
    move-object p3, v2

    :goto_1
    instance-of p1, p3, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_5

    move-object p3, v2

    :cond_5
    check-cast p3, Lcom/netflix/android/moneyball/fields/NumberField;

    .line 82
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combineMonthAndYearExpirationData$1;-><init>(Lo/SynthesisRequest;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;)V

    check-cast p1, Lo/alN;

    invoke-static {v1, p3, p1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    return-object p1
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;"
        }
    .end annotation

    .line 59
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p1, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez p1, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    .line 60
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_4
    move-object p3, v2

    :goto_1
    instance-of p1, p3, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-nez p1, :cond_5

    move-object p3, v2

    :cond_5
    check-cast p3, Lcom/netflix/android/moneyball/fields/BooleanField;

    if-eqz v1, :cond_6

    .line 63
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object p2, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, p3}, Lo/TtsEngines;->b(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/BooleanField;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    move-result-object v2

    :cond_6
    return-object v2
.end method

.method public static final synthetic c(Lo/SynthesisRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method private final c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lo/Emoji;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/Emoji;"
        }
    .end annotation

    .line 97
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p2, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez p2, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_4
    move-object p2, v2

    :goto_1
    instance-of p1, p2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez p1, :cond_5

    move-object p2, v2

    :cond_5
    check-cast p2, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v1, :cond_6

    .line 102
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object p3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    iget-object v0, p0, Lo/SynthesisRequest;->a:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, p2, v0}, Lo/TtsEngines;->a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;

    move-result-object v2

    .line 101
    :cond_6
    check-cast v2, Lo/Emoji;

    return-object v2
.end method

.method private final e(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;"
        }
    .end annotation

    .line 49
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "phoneNumber"

    invoke-static {v3, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v0, :cond_2

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "countryCode"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    instance-of v0, v3, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v0, :cond_5

    move-object v3, v2

    :cond_5
    check-cast v3, Lcom/netflix/android/moneyball/fields/StringField;

    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "availableCountries"

    invoke-static {v4, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/Field;

    .line 53
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/components/form/formfield/FormFieldViewModelConverter$combinePhoneNumberAndCountryCode$1;-><init>(Lo/SynthesisRequest;)V

    check-cast p1, Lo/alO;

    invoke-static {v1, v3, v0, p1}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    return-object p1
.end method

.method public static final synthetic e(Lo/SynthesisRequest;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/SynthesisRequest;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final f(Ljava/util/List;)Lo/Emoji;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/Emoji;"
        }
    .end annotation

    const-string v0, "debitCardNumber"

    const-string v1, "maskedDebitCardNumber"

    .line 92
    invoke-direct {p0, p1, v0, v1}, Lo/SynthesisRequest;->c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lo/Emoji;

    move-result-object p1

    return-object p1
.end method

.method private final g(Ljava/util/List;)Lo/Emoji;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/Emoji;"
        }
    .end annotation

    const-string v0, "creditCardNumber"

    const-string v1, "creditMaskedCardNumber"

    .line 88
    invoke-direct {p0, p1, v0, v1}, Lo/SynthesisRequest;->c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lo/Emoji;

    move-result-object p1

    return-object p1
.end method

.method private final h(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;"
        }
    .end annotation

    .line 114
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthMonth"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v4, :cond_3

    .line 116
    iget-object v2, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/TtsEngines;->e(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final i(Ljava/util/List;)Lo/BoringLayout;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/BoringLayout;"
        }
    .end annotation

    .line 121
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthYear"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v4, :cond_3

    .line 123
    iget-object v2, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/TtsEngines;->b(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lo/BoringLayout;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final j(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;"
        }
    .end annotation

    .line 107
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "birthDate"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v4, :cond_3

    .line 109
    iget-object v2, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/TtsEngines;->d(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final k(Ljava/util/List;)Lo/BoringLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/BoringLayout;"
        }
    .end annotation

    .line 142
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deDebitBirthYear"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v0, :cond_3

    .line 144
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    sget-object v2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v2}, Lo/EventLogger;->A()Lo/FontConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lo/TtsEngines;->e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lo/BoringLayout;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final l(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;"
        }
    .end annotation

    .line 128
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deDebitBirthDate"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v0, :cond_3

    .line 130
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    sget-object v2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v2}, Lo/EventLogger;->v()Lo/FontConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lo/TtsEngines;->d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final m(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;"
        }
    .end annotation

    .line 135
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deDebitBirthMonth"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/NumberField;

    if-eqz v0, :cond_3

    .line 137
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    sget-object v2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v2}, Lo/EventLogger;->y()Lo/FontConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Lo/TtsEngines;->a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final n(Ljava/util/List;)Lo/VoiceInteractionSession;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/VoiceInteractionSession;"
        }
    .end annotation

    .line 149
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coDebitBankChoice"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v0, :cond_3

    .line 151
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lo/TtsEngines;->d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/VoiceInteractionSession;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final o(Ljava/util/List;)Lo/TrustAgentService;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/TrustAgentService;"
        }
    .end annotation

    .line 156
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coDebitAccountType"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v0, :cond_3

    .line 158
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lo/TtsEngines;->e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/TrustAgentService;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final p(Ljava/util/List;)Lo/PlaybackQueueItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/PlaybackQueueItem;"
        }
    .end annotation

    .line 201
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cardProcessingType"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v0, :cond_3

    .line 203
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lo/TtsEngines;->c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/VoiceInteractionSessionService;

    move-result-object v1

    .line 202
    :cond_3
    check-cast v1, Lo/PlaybackQueueItem;

    return-object v1
.end method

.method private final q(Ljava/util/List;)Lo/VoiceInteractionService;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/VoiceInteractionService;"
        }
    .end annotation

    .line 163
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "coDebitAccountNumber"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_3

    .line 165
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lo/TtsEngines;->a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;)Lo/VoiceInteractionService;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final r(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;)",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    .line 218
    check-cast p1, Ljava/lang/Iterable;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 341
    check-cast v1, Ljava/util/List;

    .line 219
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->e(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 220
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 223
    :cond_1
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->a(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 224
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 227
    :cond_2
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->c(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 228
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 231
    :cond_3
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->g(Ljava/util/List;)Lo/Emoji;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 232
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 235
    :cond_4
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->f(Ljava/util/List;)Lo/Emoji;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 236
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    :cond_5
    const-string v2, "profile1Name"

    const-string v4, "profile1IsKids"

    .line 239
    invoke-direct {p0, v2, v4, v1}, Lo/SynthesisRequest;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 240
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    :cond_6
    const-string v2, "profile2Name"

    const-string v4, "profile2IsKids"

    .line 243
    invoke-direct {p0, v2, v4, v1}, Lo/SynthesisRequest;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 244
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    :cond_7
    const-string v2, "profile3Name"

    const-string v4, "profile3IsKids"

    .line 247
    invoke-direct {p0, v2, v4, v1}, Lo/SynthesisRequest;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 248
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    :cond_8
    const-string v2, "profile4Name"

    const-string v4, "profile4IsKids"

    .line 251
    invoke-direct {p0, v2, v4, v1}, Lo/SynthesisRequest;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 252
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 256
    :cond_9
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->j(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 257
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 260
    :cond_a
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->h(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 261
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 264
    :cond_b
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->i(Ljava/util/List;)Lo/BoringLayout;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 265
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 268
    :cond_c
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->l(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 269
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 272
    :cond_d
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->m(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 273
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 276
    :cond_e
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->k(Ljava/util/List;)Lo/BoringLayout;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 277
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 280
    :cond_f
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->n(Ljava/util/List;)Lo/VoiceInteractionSession;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 281
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 284
    :cond_10
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->o(Ljava/util/List;)Lo/TrustAgentService;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 285
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 288
    :cond_11
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->q(Ljava/util/List;)Lo/VoiceInteractionService;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 289
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto/16 :goto_2

    .line 292
    :cond_12
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->s(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 293
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto :goto_2

    .line 296
    :cond_13
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->t(Ljava/util/List;)Lo/RecognitionListener;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 297
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto :goto_2

    .line 300
    :cond_14
    invoke-direct {p0, v1}, Lo/SynthesisRequest;->p(Ljava/util/List;)Lo/PlaybackQueueItem;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 301
    move-object v3, v2

    check-cast v3, Lo/AndroidCharacter;

    goto :goto_2

    .line 304
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_17

    const/4 v2, 0x0

    .line 305
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v4, :cond_16

    move-object v2, v3

    :cond_16
    check-cast v2, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v2, :cond_17

    .line 306
    iget-object v1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    iget-object v4, p0, Lo/SynthesisRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Lo/TtsEngines;->d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)Lo/Emoji;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lo/AndroidCharacter;

    goto :goto_2

    .line 310
    :cond_17
    iget-object v2, p0, Lo/SynthesisRequest;->d:Lo/SystemTextClassifier;

    .line 312
    check-cast v1, Ljava/lang/Iterable;

    .line 343
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 344
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 345
    check-cast v5, Lcom/netflix/android/moneyball/fields/Field;

    .line 312
    invoke-virtual {v5}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 346
    :cond_18
    check-cast v4, Ljava/util/List;

    const-string v1, "SignupNativeDataManipulationError"

    .line 310
    invoke-virtual {v2, v1, v4}, Lo/SystemTextClassifier;->c(Ljava/lang/String;Ljava/util/List;)V

    :goto_2
    if-eqz v3, :cond_0

    .line 341
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 348
    :cond_19
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final s(Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;"
        }
    .end annotation

    .line 170
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "securityCode"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netflix/android/moneyball/fields/Field;

    .line 173
    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "creditCardSecurityCode"

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debitCardSecurityCode"

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 170
    :goto_2
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez p1, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_8

    .line 177
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getFlowMode()Lcom/netflix/android/moneyball/FlowMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/FlowMode;->getData()Ljava/util/Map;

    move-result-object p1

    .line 178
    iget-object v4, p0, Lo/SynthesisRequest;->d:Lo/SystemTextClassifier;

    const-string v4, "adaptiveFields"

    const-string v5, "cvvTrustMessage"

    const-string v6, "showMessage"

    .line 182
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 320
    invoke-static {p1, v4}, Lcom/netflix/mediaclient/acquisition/kotlinx/KeyPathEvaluationKt;->getPathValue(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 321
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    const-string v4, ","

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_3

    .line 327
    :cond_5
    instance-of v4, p1, Ljava/lang/Boolean;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, p1

    .line 332
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_7

    .line 176
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 187
    :cond_7
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 189
    iget-object v2, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v3, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1, p1}, Lo/TtsEngines;->e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;ZZ)Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    move-result-object v3

    :cond_8
    return-object v3
.end method

.method private final t(Ljava/util/List;)Lo/RecognitionListener;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;)",
            "Lo/RecognitionListener;"
        }
    .end annotation

    .line 194
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/moneyball/fields/Field;

    invoke-virtual {v2}, Lcom/netflix/android/moneyball/fields/Field;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneChoice"

    invoke-static {v2, v3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz v0, :cond_3

    .line 196
    iget-object p1, p0, Lo/SynthesisRequest;->c:Lo/TtsEngines;

    iget-object v1, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lo/TtsEngines;->b(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/RecognitionListener;

    move-result-object v1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/android/moneyball/fields/Field;",
            ">;>;)",
            "Ljava/util/List<",
            "Lo/SynthesisPlaybackQueueItem;",
            ">;"
        }
    .end annotation

    const-string v0, "groupedFields"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lo/SynthesisRequest;->r(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lo/SynthesisRequest;->b(Ljava/util/List;)V

    .line 36
    iget-object v1, p0, Lo/SynthesisRequest;->e:Lo/SynthesisCallback;

    iget-object v2, p0, Lo/SynthesisRequest;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lo/akz;->b(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lo/SynthesisCallback;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
