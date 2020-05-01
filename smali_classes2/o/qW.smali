.class Lo/qW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Lo/qW;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/qW;

    invoke-direct {v0}, Lo/qW;-><init>()V

    sput-object v0, Lo/qW;->a:Lo/qW;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/text/Cue;

    check-cast p2, Lcom/google/android/exoplayer2/text/Cue;

    invoke-static {p1, p2}, Lo/ra;->e(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue;)I

    move-result p1

    return p1
.end method
