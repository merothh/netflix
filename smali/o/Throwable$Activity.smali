.class Lo/Throwable$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:I

.field public c:Z

.field public d:I

.field public e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lo/Throwable$Activity;->c:Z

    .line 47
    iput v0, p0, Lo/Throwable$Activity;->d:I

    .line 48
    iput v0, p0, Lo/Throwable$Activity;->e:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lo/Throwable$Activity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iput v0, p0, Lo/Throwable$Activity;->b:I

    return-void
.end method
