.class public Lo/ParcelableParcel;
.super Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.source ""


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;)V

    const-string p1, "RowRecyclerView"

    .line 23
    iput-object p1, p0, Lo/ParcelableParcel;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "RowRecyclerView"

    .line 23
    iput-object p1, p0, Lo/ParcelableParcel;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "RowRecyclerView"

    .line 23
    iput-object p1, p0, Lo/ParcelableParcel;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/ParcelableParcel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setTrackingName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/ParcelableParcel;->c:Ljava/lang/String;

    return-void
.end method
