.class public final Lo/TtsEngines;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/InputMethod;

.field private final c:Lo/AndroidBidi;

.field private final d:Lo/InputBinding;

.field private final e:Lo/TextToSpeechService;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/TextToSpeechService;Lo/AndroidBidi;Lo/InputMethod;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSettingsFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formChangeListenerFactory"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TtsEngines;->d:Lo/InputBinding;

    iput-object p2, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    iput-object p3, p0, Lo/TtsEngines;->c:Lo/AndroidBidi;

    iput-object p4, p0, Lo/TtsEngines;->b:Lo/InputMethod;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lo/InputMethodSubtype;
    .locals 1

    .line 141
    iget-object v0, p0, Lo/TtsEngines;->b:Lo/InputMethod;

    invoke-virtual {v0, p1}, Lo/InputMethod;->b(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lo/BoringLayout;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 79
    sget-object p3, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p3}, Lo/EventLogger;->u()Lo/FontConfig;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TtsEngines;->e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lo/BoringLayout;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/String;)Lo/SparseRectFArray;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/TtsEngines;->b:Lo/InputMethod;

    invoke-virtual {v0, p1}, Lo/InputMethod;->e(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic d(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 65
    sget-object p3, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p3}, Lo/EventLogger;->w()Lo/FontConfig;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TtsEngines;->d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lo/TtsEngines;Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;ILjava/lang/Object;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 72
    sget-object p3, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p3}, Lo/EventLogger;->x()Lo/FontConfig;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/TtsEngines;->a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthMonthField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object p2

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthMonthViewModel;-><init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/FontConfig;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;
    .locals 1

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumber"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p3}, Lcom/netflix/android/moneyball/fields/StringField;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/netflix/android/moneyball/fields/StringField;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p3}, Lcom/netflix/android/moneyball/fields/StringField;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 47
    :cond_0
    iget-object p3, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v0

    check-cast v0, Lo/TextToSpeech;

    invoke-virtual {p3, p2, v0}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object p3

    .line 48
    iget-object v0, p0, Lo/TtsEngines;->c:Lo/AndroidBidi;

    invoke-virtual {p2}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p4}, Lo/AndroidBidi;->a(Ljava/lang/String;Ljava/lang/String;)Lo/FontConfig;

    move-result-object p2

    .line 49
    new-instance p4, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    invoke-direct {p4, p1, p3, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/CreditDebitCardNumberFieldViewModel;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    return-object p4
.end method

.method public final a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;)Lo/VoiceInteractionService;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountNumberField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object p2

    .line 98
    sget-object v0, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v0}, Lo/EventLogger;->k()Lo/FontConfig;

    move-result-object v0

    .line 99
    new-instance v1, Lo/VoiceInteractionService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    invoke-direct {v1, p1, p2, v0}, Lo/VoiceInteractionService;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/BooleanField;)Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;
    .locals 4

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileNameField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;

    .line 129
    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v3

    check-cast v3, Lo/TextToSpeech;

    invoke-virtual {v2, p2, v3}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 131
    iget-object v2, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object p1

    check-cast p1, Lo/TextToSpeech;

    invoke-virtual {v2, p3, p1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lo/PlaybackSynthesisCallback;

    .line 128
    invoke-direct {v0, v1, p2, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/PlaybackSynthesisCallback;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/RecognitionListener;
    .locals 3

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)Lo/BlockingAudioTrack;

    move-result-object p2

    .line 110
    sget-object v0, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v0}, Lo/EventLogger;->E()Lo/FontConfig;

    move-result-object v0

    .line 111
    new-instance v1, Lo/RecognitionListener;

    iget-object v2, p0, Lo/TtsEngines;->d:Lo/InputBinding;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    check-cast p2, Lo/FileSynthesisCallback;

    invoke-direct {v1, v2, p1, p2, v0}, Lo/RecognitionListener;-><init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V

    return-object v1
.end method

.method public final c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/StringField;Lcom/netflix/android/moneyball/fields/Field;Ljava/lang/String;)Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;
    .locals 8

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryField"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableCountries"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object v4

    .line 120
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p3, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object v5

    .line 121
    iget-object p3, p0, Lo/TtsEngines;->c:Lo/AndroidBidi;

    invoke-virtual {p2}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p5}, Lo/AndroidBidi;->a(Ljava/lang/String;Ljava/lang/String;)Lo/FontConfig;

    move-result-object v7

    .line 122
    new-instance p2, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object v3

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition/viewmodels/CountryPhoneInputFieldViewModel;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/DynamicLayout;Lcom/netflix/android/moneyball/fields/Field;Lo/FontConfig;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/android/moneyball/fields/NumberField;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;)Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;
    .locals 8

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monthField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "yearField"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object v4

    .line 57
    iget-object p2, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v0

    check-cast v0, Lo/TextToSpeech;

    invoke-virtual {p2, p3, v0}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object v5

    .line 59
    sget-object p2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p2}, Lo/EventLogger;->l()Lo/UtteranceProgressListener;

    move-result-object v7

    .line 60
    new-instance p2, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lo/SilencePlaybackQueueItem;

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearFieldViewModel;-><init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/BidiFormatter;Lcom/netflix/mediaclient/acquisition/viewmodels/MonthYearType;Lo/UtteranceProgressListener;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/VoiceInteractionSessionService;
    .locals 3

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardProcessingTypeField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)Lo/BlockingAudioTrack;

    move-result-object p2

    .line 137
    sget-object v0, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v0}, Lo/EventLogger;->F()Lo/FontConfig;

    move-result-object v0

    .line 138
    new-instance v1, Lo/VoiceInteractionSessionService;

    iget-object v2, p0, Lo/TtsEngines;->d:Lo/InputBinding;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    check-cast p2, Lo/FileSynthesisCallback;

    invoke-direct {v1, v2, p1, p2, v0}, Lo/VoiceInteractionSessionService;-><init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V

    return-object v1
.end method

.method public final d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthDateField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;-><init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/FontConfig;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;Ljava/lang/String;)Lo/Emoji;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lo/TtsEngines;->c:Lo/AndroidBidi;

    invoke-virtual {p2}, Lcom/netflix/android/moneyball/fields/StringField;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, p3}, Lo/AndroidBidi;->a(Ljava/lang/String;Ljava/lang/String;)Lo/FontConfig;

    move-result-object p2

    .line 35
    new-instance p3, Lo/Emoji;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    invoke-direct {p3, p1, v0, p2}, Lo/Emoji;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V

    return-object p3
.end method

.method public final d(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/VoiceInteractionSession;
    .locals 3

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bankNameField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)Lo/BlockingAudioTrack;

    move-result-object p2

    .line 86
    sget-object v0, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v0}, Lo/EventLogger;->n()Lo/FontConfig;

    move-result-object v0

    .line 87
    new-instance v1, Lo/VoiceInteractionSession;

    iget-object v2, p0, Lo/TtsEngines;->d:Lo/InputBinding;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    check-cast p2, Lo/FileSynthesisCallback;

    invoke-direct {v1, v2, p1, p2, v0}, Lo/VoiceInteractionSession;-><init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V

    return-object v1
.end method

.method public final e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/StringField;ZZ)Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;
    .locals 8

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cvvField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;

    move-result-object v4

    .line 104
    sget-object p2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p2}, Lo/EventLogger;->c()Lo/FontConfig;

    move-result-object v7

    .line 105
    new-instance p2, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object v3

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;-><init>(Lo/SparseRectFArray;Lo/DynamicLayout;ZZLo/FontConfig;)V

    return-object p2
.end method

.method public final e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/NumberField;Lo/FontConfig;)Lo/BoringLayout;
    .locals 2

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthYearField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;

    move-result-object p2

    .line 81
    new-instance v0, Lo/BoringLayout;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lo/BoringLayout;-><init>(Lo/SparseRectFArray;Lo/BidiFormatter;Lo/FontConfig;)V

    return-object v0
.end method

.method public final e(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/ChoiceField;)Lo/TrustAgentService;
    .locals 3

    const-string v0, "pageKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountTypeField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lo/TtsEngines;->e:Lo/TextToSpeechService;

    invoke-direct {p0, p1}, Lo/TtsEngines;->a(Ljava/lang/String;)Lo/InputMethodSubtype;

    move-result-object v1

    check-cast v1, Lo/TextToSpeech;

    invoke-virtual {v0, p2, v1}, Lo/TextToSpeechService;->e(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)Lo/BlockingAudioTrack;

    move-result-object p2

    .line 92
    sget-object v0, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v0}, Lo/EventLogger;->p()Lo/FontConfig;

    move-result-object v0

    .line 93
    new-instance v1, Lo/TrustAgentService;

    iget-object v2, p0, Lo/TtsEngines;->d:Lo/InputBinding;

    invoke-direct {p0, p1}, Lo/TtsEngines;->c(Ljava/lang/String;)Lo/SparseRectFArray;

    move-result-object p1

    check-cast p1, Lo/SilencePlaybackQueueItem;

    check-cast p2, Lo/FileSynthesisCallback;

    invoke-direct {v1, v2, p1, p2, v0}, Lo/TrustAgentService;-><init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V

    return-object v1
.end method
