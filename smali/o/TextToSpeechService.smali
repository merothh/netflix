.class public final Lo/TextToSpeechService;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)Lo/AutoGrowArray;
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lo/AutoGrowArray;

    invoke-direct {v0, p1, p2}, Lo/AutoGrowArray;-><init>(Lcom/netflix/android/moneyball/fields/BooleanField;Lo/TextToSpeech;)V

    return-object v0
.end method

.method public final b(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)Lo/BidiFormatter;
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lo/AutoText;

    invoke-direct {v0, p1, p2}, Lo/AutoText;-><init>(Lcom/netflix/android/moneyball/fields/NumberField;Lo/TextToSpeech;)V

    check-cast v0, Lo/BidiFormatter;

    return-object v0
.end method

.method public final e(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)Lo/BlockingAudioTrack;
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lo/BlockingAudioTrack;

    invoke-direct {v0, p1, p2}, Lo/BlockingAudioTrack;-><init>(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)V

    return-object v0
.end method

.method public final e(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)Lo/DynamicLayout;
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lo/CharSequenceCharacterIterator;

    invoke-direct {v0, p1, p2}, Lo/CharSequenceCharacterIterator;-><init>(Lcom/netflix/android/moneyball/fields/StringField;Lo/TextToSpeech;)V

    check-cast v0, Lo/DynamicLayout;

    return-object v0
.end method
