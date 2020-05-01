.class Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->d:Ljava/util/ArrayList;

    const/4 v0, 0x5

    .line 5654
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->c:I

    const-wide/16 v0, 0x0

    .line 5655
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->a:J

    .line 5656
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$SharedElementCallback$Activity;->b:J

    return-void
.end method
