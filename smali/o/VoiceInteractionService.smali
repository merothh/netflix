.class public final Lo/VoiceInteractionService;
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
.field private final a:Lo/FontConfig;

.field private c:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/DynamicLayout;


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/FontConfig;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputFieldSetting"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    check-cast p1, Lo/SilencePlaybackQueueItem;

    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lo/VoiceInteractionService;->e:Lo/DynamicLayout;

    iput-object p3, p0, Lo/VoiceInteractionService;->a:Lo/FontConfig;

    .line 17
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    iput-object p1, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    return-void
.end method


# virtual methods
.method public a()Lo/FontConfig;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/VoiceInteractionService;->a:Lo/FontConfig;

    return-object v0
.end method

.method protected c(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;
    .locals 3

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lo/VoiceInteractionService;->getUserFacingString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 31
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMinLength()I

    move-result v1

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt v1, p2, :cond_2

    if-ge v2, p2, :cond_3

    .line 35
    :cond_2
    invoke-virtual {p0}, Lo/VoiceInteractionService;->a()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 36
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMinLength()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "minLength"

    invoke-virtual {p1, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 37
    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "maxLength"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    invoke-virtual {p0}, Lo/VoiceInteractionService;->a()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->g()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lo/VoiceInteractionService;->a()Lo/FontConfig;

    move-result-object p2

    invoke-virtual {p2}, Lo/FontConfig;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lo/Cloneable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Cloneable<",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bankChoice"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    return-void
.end method

.method public c(Lo/DynamicLayout;)Z
    .locals 5

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p1, Lo/AbstractEventLogger;->d:Lo/AbstractEventLogger$ActionBar;

    invoke-virtual {p0}, Lo/VoiceInteractionService;->getUserFacingString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    invoke-virtual {v1}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/android/moneyball/fields/StringField;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/android/moneyball/fields/StringField;->getMinLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    invoke-virtual {v3}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 46
    :goto_1
    iget-object v4, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    invoke-virtual {v4}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/netflix/android/moneyball/fields/StringField;->getValidationRegex()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 45
    :cond_2
    invoke-virtual {p1, v0, v1, v3, v2}, Lo/AbstractEventLogger$ActionBar;->d(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/regex/Pattern;)Z

    move-result p1

    return p1
.end method

.method public final d()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Lcom/netflix/android/moneyball/fields/StringField;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    return-object v0
.end method

.method public synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 11
    check-cast p2, Lo/DynamicLayout;

    invoke-virtual {p0, p1, p2}, Lo/VoiceInteractionService;->c(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/VoiceInteractionService;->c:Lo/Cloneable;

    invoke-virtual {v0}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/moneyball/fields/StringField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/StringField;->getMaxLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public synthetic getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/VoiceInteractionService;->a()Lo/FontConfig;

    move-result-object v0

    check-cast v0, Lo/UtteranceProgressListener;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/VoiceInteractionService;->e:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 11
    check-cast p1, Lo/DynamicLayout;

    invoke-virtual {p0, p1}, Lo/VoiceInteractionService;->c(Lo/DynamicLayout;)Z

    move-result p1

    return p1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lo/VoiceInteractionService;->e:Lo/DynamicLayout;

    invoke-interface {v0, p1}, Lo/DynamicLayout;->b(Ljava/lang/Object;)V

    return-void
.end method
