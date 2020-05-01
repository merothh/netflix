.class public abstract Lo/InstantiationError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstantiationError$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private final c:I

.field private d:Ljava/lang/Object;

.field private e:Lo/InstantiationError$TaskDescription;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lo/InstantiationError;->a:I

    .line 84
    iput p2, p0, Lo/InstantiationError;->c:I

    .line 85
    iput p3, p0, Lo/InstantiationError;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 123
    iput p1, p0, Lo/InstantiationError;->b:I

    .line 124
    invoke-virtual {p0}, Lo/InstantiationError;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 126
    invoke-static {v0, p1}, Lo/InternalError;->e(Ljava/lang/Object;I)V

    .line 128
    :cond_0
    iget-object p1, p0, Lo/InstantiationError;->e:Lo/InstantiationError$TaskDescription;

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1, p0}, Lo/InstantiationError$TaskDescription;->onVolumeChanged(Lo/InstantiationError;)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 94
    iget v0, p0, Lo/InstantiationError;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    .line 113
    iget v0, p0, Lo/InstantiationError;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 104
    iget v0, p0, Lo/InstantiationError;->a:I

    return v0
.end method

.method public d(Lo/InstantiationError$TaskDescription;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/InstantiationError;->e:Lo/InstantiationError$TaskDescription;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    .line 168
    iget-object v0, p0, Lo/InstantiationError;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 169
    iget v0, p0, Lo/InstantiationError;->a:I

    iget v1, p0, Lo/InstantiationError;->c:I

    iget v2, p0, Lo/InstantiationError;->b:I

    new-instance v3, Lo/InstantiationError$3;

    invoke-direct {v3, p0}, Lo/InstantiationError$3;-><init>(Lo/InstantiationError;)V

    invoke-static {v0, v1, v2, v3}, Lo/InternalError;->d(IIILo/InternalError$TaskDescription;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/InstantiationError;->d:Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lo/InstantiationError;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method
