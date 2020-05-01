.class public abstract Lo/sA;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sA;",
            ">;"
        }
    .end annotation

    .line 13
    new-instance v0, Lo/sf$StateListAnimator;

    invoke-direct {v0, p0}, Lo/sf$StateListAnimator;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lo/sx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation
.end method

.method public abstract b()Lo/sx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ldl"
    .end annotation
.end method

.method public abstract d()Lo/sx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license"
    .end annotation
.end method

.method public abstract e()Lo/sx;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stopPlayback"
    .end annotation
.end method
