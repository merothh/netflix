.class public final Lo/Ic;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ic$StateListAnimator;,
        Lo/Ic$ActionBar;,
        Lo/Ic$Application;,
        Lo/Ic$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/Ic$TaskDescription;


# instance fields
.field private final a:Lo/Ic$Application;

.field private c:Ljava/lang/Integer;

.field private final d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lo/Ic$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private final g:Lo/UnicodeScript;

.field private final h:Z

.field private final i:Landroidx/recyclerview/widget/RecyclerView;

.field private final j:Lo/Ic$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ic$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ic$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ic;->b:Lo/Ic$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;Z)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ic;->i:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lo/Ic;->g:Lo/UnicodeScript;

    iput-boolean p3, p0, Lo/Ic;->h:Z

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lo/Ic;->e:Z

    .line 91
    new-instance p1, Lo/Ic$Application;

    invoke-direct {p1, p0}, Lo/Ic$Application;-><init>(Lo/Ic;)V

    iput-object p1, p0, Lo/Ic;->a:Lo/Ic$Application;

    .line 97
    new-instance p1, Ljava/util/PriorityQueue;

    .line 99
    sget-object p2, Lo/Ic$Dialog;->a:Lo/Ic$Dialog;

    check-cast p2, Ljava/util/Comparator;

    const/4 p3, 0x5

    .line 97
    invoke-direct {p1, p3, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lo/Ic;->d:Ljava/util/PriorityQueue;

    .line 117
    new-instance p1, Lo/Ic$Activity;

    invoke-direct {p1, p0}, Lo/Ic$Activity;-><init>(Lo/Ic;)V

    check-cast p1, Lo/Ic$StateListAnimator;

    iput-object p1, p0, Lo/Ic;->j:Lo/Ic$StateListAnimator;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;ZILo/amc;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lo/Ic;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;Z)V

    return-void
.end method

.method public static final synthetic a(Lo/Ic;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Ic;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic b(Lo/Ic;)Lo/Ic$Application;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Ic;->a:Lo/Ic$Application;

    return-object p0
.end method

.method public static final synthetic c(Lo/Ic;)Ljava/util/PriorityQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Ic;->d:Ljava/util/PriorityQueue;

    return-object p0
.end method

.method public static final synthetic d(Lo/Ic;)Ljava/lang/Integer;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Ic;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic d(Lo/Ic;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lo/Ic;->c:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic e(Lo/Ic;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lo/Ic;->h:Z

    return p0
.end method

.method public static final synthetic f(Lo/Ic;)Lo/UnicodeScript;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/Ic;->g:Lo/UnicodeScript;

    return-object p0
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lo/Ic;->e:Z

    if-eq v0, p1, :cond_0

    .line 86
    iput-boolean p1, p0, Lo/Ic;->e:Z

    .line 87
    iget-object p1, p0, Lo/Ic;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/Ic;->e:Z

    return v0
.end method

.method public final e()Lo/Ic$StateListAnimator;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/Ic;->j:Lo/Ic$StateListAnimator;

    return-object v0
.end method
