.class final Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;
.super Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/animations/AnimationTemplateId;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/template/VisualStateDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p7}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->type()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->styleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->styleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStateTransitions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->visualStates()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->assetId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->assetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/AutoValue_UiDefinition_Layout_Timer_TimerChildren_TimerBar;->children()Lcom/netflix/model/leafs/originals/interactive/UiDefinition$Layout$Timer$TimerChildren$TimerBar$TimerBarChildren;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
