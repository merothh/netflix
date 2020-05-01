.class public final Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;
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
.field private final isKidsProfile:Lo/PlaybackSynthesisCallback;

.field private final profileName:Lo/DynamicLayout;


# direct methods
.method public constructor <init>(Lo/SparseRectFArray;Lo/DynamicLayout;Lo/PlaybackSynthesisCallback;)V
    .locals 1

    const-string v0, "formStateChangeListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileName"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast p1, Lo/SilencePlaybackQueueItem;

    invoke-static {p2}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/AndroidCharacter;-><init>(Lo/SilencePlaybackQueueItem;Ljava/util/List;)V

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->isKidsProfile:Lo/PlaybackSynthesisCallback;

    return-void
.end method


# virtual methods
.method public bridge synthetic getError(Lo/InputBinding;Lo/AlteredCharSequence;)Ljava/lang/String;
    .locals 0

    .line 14
    check-cast p2, Lo/DynamicLayout;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->getError(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getError(Lo/InputBinding;Lo/DynamicLayout;)Ljava/lang/String;
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "field"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInputFieldCharacterLimit()Ljava/lang/Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInputFieldSetting()Lo/UtteranceProgressListener;
    .locals 7

    .line 21
    new-instance v6, Lo/UtteranceProgressListener;

    .line 22
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->pk:I

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 24
    sget-object v3, Lcom/netflix/cl/model/InputKind;->profileName:Lcom/netflix/cl/model/InputKind;

    .line 25
    sget-object v4, Lcom/netflix/cl/model/AppView;->onboardingProfileNameInput:Lcom/netflix/cl/model/AppView;

    const/16 v5, 0x4001

    move-object v0, v6

    .line 21
    invoke-direct/range {v0 .. v5}, Lo/UtteranceProgressListener;-><init>(ILjava/lang/Integer;Lcom/netflix/cl/model/InputKind;Lcom/netflix/cl/model/AppView;I)V

    return-object v6
.end method

.method public final getProfileName()Lo/DynamicLayout;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    return-object v0
.end method

.method public getUserFacingString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    invoke-interface {v0}, Lo/DynamicLayout;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isKidsProfile()Lo/PlaybackSynthesisCallback;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->isKidsProfile:Lo/PlaybackSynthesisCallback;

    return-object v0
.end method

.method public bridge synthetic isValid(Lo/AlteredCharSequence;)Z
    .locals 0

    .line 14
    check-cast p1, Lo/DynamicLayout;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->isValid(Lo/DynamicLayout;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lo/DynamicLayout;)Z
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    invoke-interface {p1}, Lo/DynamicLayout;->c()Z

    move-result p1

    return p1
.end method

.method public setUserFacingString(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->profileName:Lo/DynamicLayout;

    invoke-interface {v0, p1}, Lo/DynamicLayout;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final showKidsCheckbox()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->isKidsProfile:Lo/PlaybackSynthesisCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateIsKidsProfile(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/viewmodels/UserProfileFieldViewModel;->isKidsProfile:Lo/PlaybackSynthesisCallback;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/PlaybackSynthesisCallback;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
