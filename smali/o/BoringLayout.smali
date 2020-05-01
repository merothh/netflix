.class public Lo/BoringLayout;
.super Lo/AndroidCharacter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AndroidCharacter<",
        "Lo/BidiFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/BidiFormatter;

.field private final e:Lo/FontConfig;


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/BidiFormatter;Lo/FontConfig;)V
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

    iput-object p2, p0, Lo/BoringLayout;->a:Lo/BidiFormatter;

    iput-object p3, p0, Lo/BoringLayout;->e:Lo/FontConfig;

    return-void
.end method


# virtual methods
.method protected a(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;
    .locals 5

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lo/BoringLayout;->getUserFacingString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    invoke-interface {p2}, Lo/BidiFormatter;->c()I

    move-result v0

    new-instance v3, Lo/amD;

    invoke-interface {p2}, Lo/BidiFormatter;->b()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lo/amD;-><init>(II)V

    invoke-interface {p2}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lo/amD;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 26
    invoke-virtual {p0}, Lo/BoringLayout;->c()Lo/FontConfig;

    move-result-object v0

    invoke-virtual {v0}, Lo/FontConfig;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 27
    invoke-interface {p2}, Lo/BidiFormatter;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "minValue"

    invoke-virtual {p1, v1, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 28
    invoke-interface {p2}, Lo/BidiFormatter;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "maxValue"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 31
    :cond_3
    invoke-virtual {p0}, Lo/BoringLayout;->c()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 23
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lo/BoringLayout;->c()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public c()Lo/FontConfig;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/BoringLayout;->e:Lo/FontConfig;

    return-object v0
.end method

.method public d(Lo/BidiFormatter;)Z
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p1}, Lo/BidiFormatter;->d()Z

    move-result p1

    return p1
.end method

.method public synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 6
    check-cast p2, Lo/BidiFormatter;

    invoke-virtual {p0, p1, p2}, Lo/BoringLayout;->a(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;

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

    .line 6
    invoke-virtual {p0}, Lo/BoringLayout;->c()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/BoringLayout;->a:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 6
    check-cast p1, Lo/BidiFormatter;

    invoke-virtual {p0, p1}, Lo/BoringLayout;->d(Lo/BidiFormatter;)Z

    move-result p1

    return p1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lo/BoringLayout;->a:Lo/BidiFormatter;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    return-void
.end method
