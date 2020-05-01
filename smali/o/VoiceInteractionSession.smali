.class public final Lo/VoiceInteractionSession;
.super Lo/PlaybackQueueItem;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lo/FontConfig;

.field private final e:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldStateChangeListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choiceInputField"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lo/PlaybackQueueItem;-><init>(Lo/InputBinding;Lo/SilencePlaybackQueueItem;Lo/FileSynthesisCallback;Lo/FontConfig;)V

    iput-object p4, p0, Lo/VoiceInteractionSession;->b:Lo/FontConfig;

    .line 25
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    iput-object p1, p0, Lo/VoiceInteractionSession;->e:Lo/Cloneable;

    return-void
.end method

.method private final b(Lcom/netflix/android/moneyball/fields/OptionField;)Lcom/netflix/android/moneyball/fields/StringField;
    .locals 1

    const-string v0, "coDebitAccountNumber"

    .line 36
    invoke-virtual {p1, v0}, Lcom/netflix/android/moneyball/fields/OptionField;->getField(Ljava/lang/String;)Lcom/netflix/android/moneyball/fields/Field;

    move-result-object p1

    instance-of v0, p1, Lcom/netflix/android/moneyball/fields/StringField;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/netflix/android/moneyball/fields/StringField;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/netflix/android/moneyball/fields/OptionField;)V
    .locals 1

    const-string v0, "newSelectedValue"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedOption"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lo/VoiceInteractionSession;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lo/VoiceInteractionSession;->c()Lo/FileSynthesisCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/FileSynthesisCallback;->e(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lo/VoiceInteractionSession;->a:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lo/VoiceInteractionSession;->e:Lo/Cloneable;

    invoke-direct {p0, p2}, Lo/VoiceInteractionSession;->b(Lcom/netflix/android/moneyball/fields/OptionField;)Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/android/moneyball/fields/OptionField;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "choices"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 50
    check-cast v1, Lcom/netflix/android/moneyball/fields/OptionField;

    .line 28
    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/OptionField;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/VoiceInteractionSession;->e:Lo/Cloneable;

    return-object v0
.end method

.method public e()Lo/FontConfig;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/VoiceInteractionSession;->b:Lo/FontConfig;

    return-object v0
.end method

.method public final e(Ljava/util/List;Lo/InputBinding;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/InputBinding;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "bankNames"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    check-cast p1, Ljava/lang/Iterable;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 53
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-virtual {p2, v1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/VoiceInteractionSession;->e()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method
