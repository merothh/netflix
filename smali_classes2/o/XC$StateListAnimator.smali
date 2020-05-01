.class public final Lo/XC$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Xx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/XC;-><init>(Lo/Xv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/XC;


# direct methods
.method constructor <init>(Lo/XC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lo/XC$StateListAnimator;->d:Lo/XC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;II)V
    .locals 10

    const-string v0, "choicePointName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lo/XC$StateListAnimator;->d:Lo/XC;

    invoke-static {v0}, Lo/XC;->c(Lo/XC;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 73
    iget-object v0, p0, Lo/XC$StateListAnimator;->d:Lo/XC;

    invoke-virtual {v0}, Lo/XC;->c()Lo/Xv;

    move-result-object v0

    new-instance v9, Lo/UW$Application;

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v3, ""

    move-object v1, v9

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lo/UW$Application;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;IZ)V

    invoke-interface {v0, v9}, Lo/Xv;->e(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lo/XC$StateListAnimator;->d:Lo/XC;

    invoke-static {p1}, Lo/XC;->d(Lo/XC;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lo/XC$StateListAnimator;->d:Lo/XC;

    invoke-virtual {p1}, Lo/XC;->c()Lo/Xv;

    move-result-object p1

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lo/Xv;->c(IZ)V

    :cond_0
    return-void
.end method
