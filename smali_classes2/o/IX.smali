.class Lo/IX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final c:Lo/IL;

.field private final e:I


# direct methods
.method public constructor <init>(Lo/IL;ILandroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/IX;->c:Lo/IL;

    iput p2, p0, Lo/IX;->e:I

    iput-object p3, p0, Lo/IX;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/IX;->c:Lo/IL;

    iget v1, p0, Lo/IX;->e:I

    iget-object v2, p0, Lo/IX;->a:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {v0, v1, v2}, Lo/IL;->c(Lo/IL;ILandroidx/recyclerview/widget/GridLayoutManager;)V

    return-void
.end method
