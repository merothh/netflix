.class final Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;
.super Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_VisualStateTransitionDefinitions;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p16}, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_VisualStateTransitionDefinitions;-><init>(Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissNonFocusedSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissNonSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissNonSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissNonSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissNonSelectedTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissSelectedImmediate()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissSelectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissSelectedTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissTimeout()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->dismissTimeoutFallbackTutorial()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->focused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->init()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->hide()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->selectedLazy()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/AutoValue_VisualStateTransitionDefinitions;->unfocused()Lcom/netflix/model/leafs/originals/interactive/animations/TransitionDefinitions;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
