.class public Landroidx/recyclerview/widget/LinearLayoutManager$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Activity"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public e:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 2549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    const/4 v0, 0x0

    .line 2556
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$Activity;->a:I

    .line 2557
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$Activity;->c:Z

    .line 2558
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$Activity;->e:Z

    .line 2559
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$Activity;->b:Z

    return-void
.end method
