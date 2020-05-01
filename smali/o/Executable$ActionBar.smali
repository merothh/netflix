.class Lo/Executable$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Executable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# static fields
.field static b:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/Executable$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

.field c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    new-instance v0, Lo/CharArrayReader$Application;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo/CharArrayReader$Application;-><init>(I)V

    sput-object v0, Lo/Executable$ActionBar;->b:Lo/CharArrayReader$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()V
    .locals 1

    .line 326
    :goto_0
    sget-object v0, Lo/Executable$ActionBar;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static c(Lo/Executable$ActionBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Lo/Executable$ActionBar;->e:I

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lo/Executable$ActionBar;->c:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    .line 320
    iput-object v0, p0, Lo/Executable$ActionBar;->a:Landroidx/recyclerview/widget/RecyclerView$FragmentManager$StateListAnimator;

    .line 321
    sget-object v0, Lo/Executable$ActionBar;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method static e()Lo/Executable$ActionBar;
    .locals 1

    .line 313
    sget-object v0, Lo/Executable$ActionBar;->b:Lo/CharArrayReader$Activity;

    invoke-interface {v0}, Lo/CharArrayReader$Activity;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Executable$ActionBar;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lo/Executable$ActionBar;

    invoke-direct {v0}, Lo/Executable$ActionBar;-><init>()V

    :cond_0
    return-object v0
.end method
