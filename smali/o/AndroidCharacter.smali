.class public abstract Lo/AndroidCharacter;
.super Lo/SynthesisPlaybackQueueItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/AlteredCharSequence<",
        "*>;>",
        "Lo/SynthesisPlaybackQueueItem;"
    }
.end annotation


# instance fields
.field private final fieldStateChangeListener:Lo/SilencePlaybackQueueItem;

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private showValidationState:Z


# direct methods
.method public constructor <init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SilencePlaybackQueueItem;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "fieldStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fields"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lo/SynthesisPlaybackQueueItem;-><init>()V

    iput-object p1, p0, Lo/AndroidCharacter;->fieldStateChangeListener:Lo/SilencePlaybackQueueItem;

    iput-object p2, p0, Lo/AndroidCharacter;->fields:Ljava/util/List;

    return-void
.end method

.method public static synthetic inputFieldSetting$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getAreAllFieldsValid()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lo/AndroidCharacter;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AlteredCharSequence;

    .line 40
    invoke-virtual {p0, v1}, Lo/AndroidCharacter;->isValid(Lo/AlteredCharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getError(Lo/InputBinding;)Ljava/lang/String;
    .locals 3

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lo/AndroidCharacter;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AlteredCharSequence;

    .line 58
    invoke-virtual {p0}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lo/AndroidCharacter;->isValid(Lo/AlteredCharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p0, p1, v1}, Lo/AndroidCharacter;->getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/InputBinding;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getHint(Lo/InputBinding;)Ljava/lang/String;
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lo/AndroidCharacter;->getInputFieldSetting()Lo/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/UtteranceProgressListener;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lo/AndroidCharacter;->getInputFieldSetting()Lo/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/UtteranceProgressListener;->e()I

    move-result v0

    return v0
.end method

.method public abstract getInputFieldCharacterLimit()Ljava/lang/Integer;
.end method

.method public abstract getInputFieldSetting()Lo/UtteranceProgressListener;
.end method

.method public final getInputKind()Lcom/netflix/cl/model/InputKind;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lo/AndroidCharacter;->getInputFieldSetting()Lo/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/UtteranceProgressListener;->b()Lcom/netflix/cl/model/InputKind;

    move-result-object v0

    return-object v0
.end method

.method public final getInputType()I
    .locals 1

    .line 70
    invoke-virtual {p0}, Lo/AndroidCharacter;->getInputFieldSetting()Lo/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/UtteranceProgressListener;->c()I

    move-result v0

    return v0
.end method

.method public getShowValidationState()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lo/AndroidCharacter;->showValidationState:Z

    return v0
.end method

.method public abstract getUserFacingString()Ljava/lang/String;
.end method

.method public getViewType()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/AndroidCharacter;->getInputFieldSetting()Lo/UtteranceProgressListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/UtteranceProgressListener;->a()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0
.end method

.method public abstract isValid(Lo/AlteredCharSequence;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public setShowValidationState(Z)V
    .locals 2

    .line 74
    iput-boolean p1, p0, Lo/AndroidCharacter;->showValidationState:Z

    .line 75
    iget-object v0, p0, Lo/AndroidCharacter;->fieldStateChangeListener:Lo/SilencePlaybackQueueItem;

    invoke-virtual {p0}, Lo/AndroidCharacter;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lo/SilencePlaybackQueueItem;->a(IZ)V

    return-void
.end method

.method public abstract setUserFacingString(Ljava/lang/String;)V
.end method

.method public showValidationStateIfNotEmpty()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lo/AndroidCharacter;->getUserFacingString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0, v1}, Lo/AndroidCharacter;->setShowValidationState(Z)V

    :cond_2
    return-void
.end method
