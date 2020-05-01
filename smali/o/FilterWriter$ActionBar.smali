.class abstract Lo/FilterWriter$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FilterWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3965
    invoke-direct {p0, p1, p2, v0, p3}, Lo/FilterWriter$ActionBar;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 3970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    iput p1, p0, Lo/FilterWriter$ActionBar;->c:I

    .line 3972
    iput-object p2, p0, Lo/FilterWriter$ActionBar;->b:Ljava/lang/Class;

    .line 3973
    iput p3, p0, Lo/FilterWriter$ActionBar;->d:I

    .line 3974
    iput p4, p0, Lo/FilterWriter$ActionBar;->a:I

    return-void
.end method

.method private b()Z
    .locals 2

    .line 4003
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lo/FilterWriter$ActionBar;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()Z
    .locals 2

    .line 4007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract c(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method d(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 3992
    invoke-direct {p0}, Lo/FilterWriter$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3993
    invoke-virtual {p0, p1}, Lo/FilterWriter$ActionBar;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3994
    :cond_0
    invoke-direct {p0}, Lo/FilterWriter$ActionBar;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3995
    iget v0, p0, Lo/FilterWriter$ActionBar;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 3996
    iget-object v0, p0, Lo/FilterWriter$ActionBar;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
