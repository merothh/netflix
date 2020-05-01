.class public Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;
.super Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ConditionPersistentState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;->describeContents()I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ConditionPersistentState"

    return-object v0
.end method

.method public getValue(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Lcom/google/gson/JsonPrimitive;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;",
            ")",
            "Lcom/google/gson/JsonPrimitive;"
        }
    .end annotation

    .line 35
    invoke-virtual {p2}, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;->persistent()Lcom/netflix/model/leafs/originals/interactive/condition/State;

    move-result-object p1

    iget-object p1, p1, Lcom/netflix/model/leafs/originals/interactive/condition/State;->values:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/netflix/model/leafs/originals/interactive/condition/ConditionPersistentState;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonPrimitive;

    return-object p1
.end method

.method public bridge synthetic meetsCondition(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Z
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;->meetsCondition(Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;->write(Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/netflix/model/leafs/originals/interactive/condition/AbstractConditionState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
