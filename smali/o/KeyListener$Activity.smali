.class final Lo/KeyListener$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/KeyListener;

.field b:I

.field final c:I

.field d:I

.field e:Z


# direct methods
.method constructor <init>(Lo/KeyListener;I)V
    .locals 1

    .line 43
    iput-object p1, p0, Lo/KeyListener$Activity;->a:Lo/KeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lo/KeyListener$Activity;->e:Z

    .line 44
    iput p2, p0, Lo/KeyListener$Activity;->c:I

    .line 45
    invoke-virtual {p1}, Lo/KeyListener;->c()I

    move-result p1

    iput p1, p0, Lo/KeyListener$Activity;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 50
    iget v0, p0, Lo/KeyListener$Activity;->b:I

    iget v1, p0, Lo/KeyListener$Activity;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lo/KeyListener$Activity;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lo/KeyListener$Activity;->a:Lo/KeyListener;

    iget v1, p0, Lo/KeyListener$Activity;->b:I

    iget v2, p0, Lo/KeyListener$Activity;->c:I

    invoke-virtual {v0, v1, v2}, Lo/KeyListener;->e(II)Ljava/lang/Object;

    move-result-object v0

    .line 57
    iget v1, p0, Lo/KeyListener$Activity;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/KeyListener$Activity;->b:I

    .line 58
    iput-boolean v2, p0, Lo/KeyListener$Activity;->e:Z

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 64
    iget-boolean v0, p0, Lo/KeyListener$Activity;->e:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lo/KeyListener$Activity;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/KeyListener$Activity;->b:I

    .line 68
    iget v0, p0, Lo/KeyListener$Activity;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/KeyListener$Activity;->d:I

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lo/KeyListener$Activity;->e:Z

    .line 70
    iget-object v0, p0, Lo/KeyListener$Activity;->a:Lo/KeyListener;

    iget v1, p0, Lo/KeyListener$Activity;->b:I

    invoke-virtual {v0, v1}, Lo/KeyListener;->d(I)V

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
