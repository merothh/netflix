.class public Lo/PlaybackQueueItem;
.super Lo/AndroidCharacter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AndroidCharacter<",
        "Lo/FileSynthesisCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/InputBinding;

.field private final d:Lo/FileSynthesisCallback;

.field private final e:Lo/FontConfig;


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

    .line 10
    invoke-static {p3}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p1, p0, Lo/PlaybackQueueItem;->b:Lo/InputBinding;

    iput-object p3, p0, Lo/PlaybackQueueItem;->d:Lo/FileSynthesisCallback;

    iput-object p4, p0, Lo/PlaybackQueueItem;->e:Lo/FontConfig;

    return-void
.end method


# virtual methods
.method public b(Lo/FileSynthesisCallback;)Z
    .locals 2

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lo/FileSynthesisCallback;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/FileSynthesisCallback;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final c()Lo/FileSynthesisCallback;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/PlaybackQueueItem;->d:Lo/FileSynthesisCallback;

    return-object v0
.end method

.method public final d()Lo/InputBinding;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/PlaybackQueueItem;->b:Lo/InputBinding;

    return-object v0
.end method

.method protected e(Lo/InputBinding;Lo/FileSynthesisCallback;)Ljava/lang/String;
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lo/PlaybackQueueItem;->getUserFacingString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lo/PlaybackQueueItem;->e()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Lo/FontConfig;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/PlaybackQueueItem;->e:Lo/FontConfig;

    return-object v0
.end method

.method public synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 5
    check-cast p2, Lo/FileSynthesisCallback;

    invoke-virtual {p0, p1, p2}, Lo/PlaybackQueueItem;->e(Lo/InputBinding;Lo/FileSynthesisCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lo/PlaybackQueueItem;->e()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lo/PlaybackQueueItem;->d:Lo/FileSynthesisCallback;

    invoke-interface {v0}, Lo/FileSynthesisCallback;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

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
    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/PlaybackQueueItem;->b:Lo/InputBinding;

    iget-object v1, p0, Lo/PlaybackQueueItem;->d:Lo/FileSynthesisCallback;

    invoke-interface {v1}, Lo/FileSynthesisCallback;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 5
    check-cast p1, Lo/FileSynthesisCallback;

    invoke-virtual {p0, p1}, Lo/PlaybackQueueItem;->b(Lo/FileSynthesisCallback;)Z

    move-result p1

    return p1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
