.class public Lo/Emoji;
.super Lo/AndroidCharacter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AndroidCharacter<",
        "Lo/DynamicLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Lo/DynamicLayout;

.field private final inputFieldSetting:Lo/FontConfig;


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lo/SilencePlaybackQueueItem;

    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lo/Emoji;->field:Lo/DynamicLayout;

    iput-object p3, p0, Lo/Emoji;->inputFieldSetting:Lo/FontConfig;

    return-void
.end method


# virtual methods
.method public bridge synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 6
    check-cast p2, Lo/DynamicLayout;

    invoke-virtual {p0, p1, p2}, Lo/Emoji;->getError(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getError(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;
    .locals 3

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lo/Emoji;->getUserFacingString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 22
    :cond_1
    invoke-interface {p2}, Lo/DynamicLayout;->e()I

    move-result v1

    invoke-interface {p2}, Lo/DynamicLayout;->b()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_3

    if-ge v2, v0, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p0}, Lo/Emoji;->getInputFieldSetting()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 23
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lo/Emoji;->getInputFieldSetting()Lo/FontConfig;

    move-result-object v0

    invoke-virtual {v0}, Lo/FontConfig;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 24
    invoke-interface {p2}, Lo/DynamicLayout;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "minLength"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 25
    invoke-interface {p2}, Lo/DynamicLayout;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "maxLength"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 21
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lo/Emoji;->getInputFieldSetting()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final getField()Lo/DynamicLayout;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/Emoji;->field:Lo/DynamicLayout;

    return-object v0
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/Emoji;->field:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInputFieldSetting()Lo/FontConfig;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/Emoji;->inputFieldSetting:Lo/FontConfig;

    return-object v0
.end method

.method public bridge synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lo/Emoji;->getInputFieldSetting()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/Emoji;->field:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 6
    check-cast p1, Lo/DynamicLayout;

    invoke-virtual {p0, p1}, Lo/Emoji;->isValid(Lo/DynamicLayout;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/DynamicLayout;)Z
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lo/DynamicLayout;->c()Z

    move-result p1

    return p1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lo/Emoji;->field:Lo/DynamicLayout;

    invoke-interface {v0, p1}, Lo/DynamicLayout;->b(Ljava/lang/Object;)V

    return-void
.end method
