.class public abstract Lo/aht;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Z

.field private d:Lo/ahp;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lo/aht;->e:Z

    .line 99
    iput-boolean v0, p0, Lo/aht;->a:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lo/aht;->d:Lo/ahp;

    return-void
.end method


# virtual methods
.method protected abstract b(I)Lo/ahp;
.end method

.method public c(I)Lo/ahp;
    .locals 2

    .line 87
    iget-boolean v0, p0, Lo/aht;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/aht;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lo/aht;->d:Lo/ahp;

    if-eqz v0, :cond_1

    .line 90
    iput-object v1, p0, Lo/aht;->d:Lo/ahp;

    return-object v0

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lo/aht;->b(I)Lo/ahp;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lo/aht;->e:Z

    return-void
.end method

.method public d(I)Z
    .locals 3

    .line 53
    iget-boolean v0, p0, Lo/aht;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lo/aht;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lo/aht;->d:Lo/ahp;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lo/aht;->c(I)Lo/ahp;

    move-result-object p1

    iput-object p1, p0, Lo/aht;->d:Lo/ahp;

    .line 56
    iget-object p1, p0, Lo/aht;->d:Lo/ahp;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
