.class public final synthetic Lo/HeterogeneousExpandableList;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic e:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/android/lottie/FrameType;->values()[Lcom/netflix/mediaclient/android/lottie/FrameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/HeterogeneousExpandableList;->e:[I

    sget-object v0, Lo/HeterogeneousExpandableList;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/FrameType;->d:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/lottie/FrameType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/HeterogeneousExpandableList;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/FrameType;->a:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/lottie/FrameType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/HeterogeneousExpandableList;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/FrameType;->b:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/lottie/FrameType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/HeterogeneousExpandableList;->e:[I

    sget-object v1, Lcom/netflix/mediaclient/android/lottie/FrameType;->e:Lcom/netflix/mediaclient/android/lottie/FrameType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/lottie/FrameType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
