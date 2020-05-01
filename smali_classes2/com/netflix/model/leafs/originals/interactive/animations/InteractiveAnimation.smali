.class public abstract Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation$ANIMATION_TYPE;
    }
.end annotation


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
            "Lcom/netflix/model/leafs/originals/interactive/animations/InteractiveAnimation;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/animations/$AutoValue_InteractiveAnimation$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract delay()J
.end method

.method public abstract delta()Ljava/lang/Float;
.end method

.method public abstract duration()J
.end method

.method public abstract ease()Lcom/netflix/model/leafs/originals/interactive/animations/Ease;
.end method

.method public abstract fromOrigin()Z
.end method

.method public abstract fromValue()Ljava/lang/Float;
.end method

.method public abstract toValue()Ljava/lang/Float;
.end method
