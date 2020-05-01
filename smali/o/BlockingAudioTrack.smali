.class public final Lo/BlockingAudioTrack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileSynthesisCallback;


# instance fields
.field private final a:Lo/TextToSpeech;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private e:Lcom/netflix/android/moneyball/fields/ChoiceField;


# direct methods
.method public constructor <init>(Lcom/netflix/android/moneyball/fields/ChoiceField;Lo/TextToSpeech;)V
    .locals 1

    const-string v0, "choiceField"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    iput-object p2, p0, Lo/BlockingAudioTrack;->a:Lo/TextToSpeech;

    .line 9
    iget-object p1, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/BlockingAudioTrack;->c:Ljava/lang/String;

    .line 18
    iget-object p1, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOptions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/BlockingAudioTrack;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/BlockingAudioTrack;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 12
    iget-object v0, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lo/BlockingAudioTrack;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lo/BlockingAudioTrack;->a:Lo/TextToSpeech;

    invoke-virtual {p0}, Lo/BlockingAudioTrack;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/TextToSpeech;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/BlockingAudioTrack;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/BlockingAudioTrack;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "selectedValue"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lo/BlockingAudioTrack;->e:Lcom/netflix/android/moneyball/fields/ChoiceField;

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->getOption(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/OptionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/ChoiceField;->setOption(Lcom/netflix/android/moneyball/fields/OptionField;)V

    return-void
.end method
