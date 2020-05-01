.class final Lo/Ic$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ic;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lo/UnicodeScript;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/Ic$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/Ic$Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Ic$Dialog;

    invoke-direct {v0}, Lo/Ic$Dialog;-><init>()V

    sput-object v0, Lo/Ic$Dialog;->a:Lo/Ic$Dialog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lo/Ic$ActionBar;

    check-cast p2, Lo/Ic$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Ic$Dialog;->e(Lo/Ic$ActionBar;Lo/Ic$ActionBar;)I

    move-result p1

    return p1
.end method

.method public final e(Lo/Ic$ActionBar;Lo/Ic$ActionBar;)I
    .locals 2

    .line 100
    invoke-virtual {p2}, Lo/Ic$ActionBar;->e()F

    move-result v0

    invoke-virtual {p1}, Lo/Ic$ActionBar;->e()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lo/Ic$ActionBar;->a()I

    move-result p1

    invoke-virtual {p2}, Lo/Ic$ActionBar;->a()I

    move-result p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method
