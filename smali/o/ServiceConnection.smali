.class public abstract Lo/ServiceConnection;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ServiceConnection$Activity;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract c()Landroid/view/Menu;
.end method

.method public abstract c(Ljava/lang/CharSequence;)V
.end method

.method public abstract d(I)V
.end method

.method public abstract d(Ljava/lang/CharSequence;)V
.end method

.method public d(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lo/ServiceConnection;->c:Z

    return-void
.end method

.method public abstract e()V
.end method

.method public abstract e(I)V
.end method

.method public abstract e(Landroid/view/View;)V
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lo/ServiceConnection;->a:Ljava/lang/Object;

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/ServiceConnection;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract h()Ljava/lang/CharSequence;
.end method

.method public abstract i()Ljava/lang/CharSequence;
.end method

.method public abstract j()Landroid/view/View;
.end method

.method public m()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lo/ServiceConnection;->c:Z

    return v0
.end method
