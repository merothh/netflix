.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;
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
.field private final birthDateInputField:Lo/BidiFormatter;

.field private final inputFieldSetting:Lo/FontConfig;


# direct methods
.method public constructor <init>(Lo/SilencePlaybackQueueItem;Lo/BidiFormatter;Lo/FontConfig;)V
    .locals 1

    const-string v0, "fieldStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthDateInputField"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->birthDateInputField:Lo/BidiFormatter;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->inputFieldSetting:Lo/FontConfig;

    return-void
.end method


# virtual methods
.method public final getBirthDateInputField()Lo/BidiFormatter;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->birthDateInputField:Lo/BidiFormatter;

    return-object v0
.end method

.method public bridge synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 10
    check-cast p2, Lo/BidiFormatter;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getError(Lo/InputBinding;Lo/BidiFormatter;)Ljava/lang/String;
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getUserFacingString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 26
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

    .line 27
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getInputFieldSetting()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->birthDateInputField:Lo/BidiFormatter;

    invoke-interface {v0}, Lo/BidiFormatter;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInputFieldSetting()Lo/FontConfig;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->inputFieldSetting:Lo/FontConfig;

    return-object v0
.end method

.method public bridge synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->getInputFieldSetting()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->birthDateInputField:Lo/BidiFormatter;

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

.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 10
    check-cast p1, Lo/BidiFormatter;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->isValid(Lo/BidiFormatter;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/BidiFormatter;)Z
    .locals 3

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lo/amD;

    const/4 v1, 0x1

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lo/amD;-><init>(II)V

    invoke-interface {p1}, Lo/BidiFormatter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/amD;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/BirthDateViewModel;->birthDateInputField:Lo/BidiFormatter;

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
