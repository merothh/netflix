.class public Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;
.super Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;
.source ""


# instance fields
.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const-string p1, "MultiRowLinearLayoutManager"

    .line 23
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "MultiRowLinearLayoutManager"

    .line 23
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;->t:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/MultiRowLinearLayoutManager;->t:Ljava/lang/String;

    return-object v0
.end method
