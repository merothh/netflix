.class public final Lo/au;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/au$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/au$Application;


# instance fields
.field private final b:Landroid/view/Choreographer;

.field private c:J

.field private d:I

.field private e:Ljava/lang/Long;

.field private g:Lo/alS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alS<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/au$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/au$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/au;->a:Lo/au$Application;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/alB;Lo/alS;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lo/alB<",
            "Lo/akj;",
            ">;",
            "Lo/alS<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onStart"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFps"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/au;->h:Lo/alB;

    iput-object p3, p0, Lo/au;->g:Lo/alS;

    .line 51
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p2

    const-string p3, "Choreographer.getInstance()"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/au;->b:Landroid/view/Choreographer;

    .line 57
    new-instance p2, Lo/au$ActionBar;

    invoke-direct {p2, p0}, Lo/au$ActionBar;-><init>(Lo/au;)V

    check-cast p2, Landroid/view/Choreographer$FrameCallback;

    iput-object p2, p0, Lo/au;->i:Landroid/view/Choreographer$FrameCallback;

    .line 76
    new-instance p2, Lo/au$5;

    invoke-direct {p2, p0}, Lo/au$5;-><init>(Lo/au;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    return-void
.end method

.method private final a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/au;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/au;->h:Lo/alB;

    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    .line 90
    sget-object v0, Lo/au;->a:Lo/au$Application;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lo/au;->d:I

    .line 92
    invoke-direct {p0}, Lo/au;->e()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lo/au;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/au;->a()V

    return-void
.end method

.method public static final synthetic a(Lo/au;J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lo/au;->c:J

    return-void
.end method

.method public static final synthetic b(Lo/au;)Ljava/lang/Long;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/au;->e:Ljava/lang/Long;

    return-object p0
.end method

.method private final c()V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/au;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lo/au;->i:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public static final synthetic c(Lo/au;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/au;->e()V

    return-void
.end method

.method public static final synthetic c(Lo/au;I)V
    .locals 0

    .line 16
    iput p1, p0, Lo/au;->d:I

    return-void
.end method

.method private final d()V
    .locals 10

    .line 97
    iget-object v0, p0, Lo/au;->e:Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 98
    invoke-direct {p0}, Lo/au;->c()V

    .line 99
    iget-wide v2, p0, Lo/au;->c:J

    sub-long/2addr v2, v0

    .line 100
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 101
    iget v6, p0, Lo/au;->d:I

    if-lez v6, :cond_0

    const/16 v7, 0xfa

    int-to-long v7, v7

    cmp-long v9, v4, v7

    if-lez v9, :cond_0

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float v6, v6, v7

    long-to-float v4, v4

    div-float/2addr v6, v4

    .line 103
    iget-object v4, p0, Lo/au;->g:Lo/alS;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Lo/au;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v6, v2, v0}, Lo/alS;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lo/au;->a:Lo/au$Application;

    check-cast v0, Lo/MessagePdu;

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lo/au;->a:Lo/au$Application;

    check-cast v0, Lo/MessagePdu;

    :goto_0
    const/4 v0, 0x0

    .line 108
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/au;->e:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lo/au;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/au;->d()V

    return-void
.end method

.method public static final synthetic d(Lo/au;Ljava/lang/Long;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lo/au;->e:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic e(Lo/au;)I
    .locals 0

    .line 16
    iget p0, p0, Lo/au;->d:I

    return p0
.end method

.method private final e()V
    .locals 2

    .line 68
    iget-object v0, p0, Lo/au;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lo/au;->i:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
