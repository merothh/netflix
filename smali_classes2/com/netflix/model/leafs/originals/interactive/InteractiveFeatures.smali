.class public abstract Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveFeatures$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_InteractiveFeatures$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract appUpdateDialogMessage()Ljava/lang/String;
.end method

.method abstract choicePointDebugMenu()Z
.end method

.method public abstract customBookmark()Z
.end method

.method public abstract fallbackTutorial()Z
.end method

.method public abstract hideDetailedDurations()Z
.end method

.method public abstract interactiveAppUpdateDialogue()Z
.end method

.method public abstract interactiveTrailer()Z
.end method

.method public abstract ipp()Z
.end method

.method public isInDebug()Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->choicePointDebugMenu()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/adk;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract playbackGraph()Z
.end method

.method public abstract playerControlsSnapshots()Z
.end method

.method public abstract prePlay()Z
.end method

.method public abstract resetUserState()Z
.end method

.method public showAnimationWarningPopup(Landroid/content/Context;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "animator_duration_scale"

    .line 51
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public titleNeedsAppUpdate()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->interactiveAppUpdateDialogue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract videoMoments()Z
.end method
