.class public Lo/Animator;
.super Lo/AccountManagerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AccountManagerInternal<",
        "Lo/BoolRes;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lo/BoolRes;

.field private final e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Lo/BoolRes;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lo/AccountManagerInternal;-><init>(Ljava/util/List;)V

    .line 12
    new-instance p1, Lo/BoolRes;

    invoke-direct {p1}, Lo/BoolRes;-><init>()V

    iput-object p1, p0, Lo/Animator;->b:Lo/BoolRes;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lo/Animator;->e:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public b(Lo/ActivityView;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityView<",
            "Lo/BoolRes;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 20
    iget-object v0, p1, Lo/ActivityView;->d:Ljava/lang/Object;

    check-cast v0, Lo/BoolRes;

    .line 21
    iget-object p1, p1, Lo/ActivityView;->b:Ljava/lang/Object;

    check-cast p1, Lo/BoolRes;

    .line 23
    iget-object v1, p0, Lo/Animator;->b:Lo/BoolRes;

    invoke-virtual {v1, v0, p1, p2}, Lo/BoolRes;->b(Lo/BoolRes;Lo/BoolRes;F)V

    .line 24
    iget-object p1, p0, Lo/Animator;->b:Lo/BoolRes;

    iget-object p2, p0, Lo/Animator;->e:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lo/ActivityManagerInternal;->a(Lo/BoolRes;Landroid/graphics/Path;)V

    .line 25
    iget-object p1, p0, Lo/Animator;->e:Landroid/graphics/Path;

    return-object p1
.end method

.method public synthetic c(Lo/ActivityView;F)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lo/Animator;->b(Lo/ActivityView;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method
