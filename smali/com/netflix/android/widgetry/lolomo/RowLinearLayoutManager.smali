.class public Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;
.super Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;
.source ""


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const-string p1, "RowLinearLayoutManager"

    .line 22
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "RowLinearLayoutManager"

    .line 22
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->d:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->d:Ljava/lang/String;

    return-object v0
.end method
