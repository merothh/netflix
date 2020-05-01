.class public Lo/TransactionTracker;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lo/TransactionTracker;->e:Z

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lo/TransactionTracker;->f:Z

    .line 25
    iput p1, p0, Lo/TransactionTracker;->d:I

    .line 26
    iput-object p2, p0, Lo/TransactionTracker;->b:Ljava/lang/String;

    .line 27
    iput p3, p0, Lo/TransactionTracker;->c:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lo/TransactionTracker;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/TransactionTracker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 31
    iget v0, p0, Lo/TransactionTracker;->d:I

    return v0
.end method

.method public c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/TransactionTracker;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lo/TransactionTracker;->c:I

    invoke-static {p1, v0}, Lo/DialogInterface;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/TransactionTracker;->a:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_0
    iget-object p1, p0, Lo/TransactionTracker;->a:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public d(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lo/TransactionTracker;->e:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lo/TransactionTracker;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lo/TransactionTracker;->f:Z

    return v0
.end method
