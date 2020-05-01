.class public final Lo/apr;
.super Lo/aps;
.source ""


# instance fields
.field private volatile _immediate:Lo/apr;

.field private final b:Lo/apr;

.field private final c:Ljava/lang/String;

.field private final e:Landroid/os/Handler;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lo/apr;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lo/aps;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/apr;->e:Landroid/os/Handler;

    iput-object p2, p0, Lo/apr;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lo/apr;->g:Z

    .line 122
    iget-boolean p1, p0, Lo/apr;->g:Z

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lo/apr;->_immediate:Lo/apr;

    .line 124
    iget-object p1, p0, Lo/apr;->_immediate:Lo/apr;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Lo/apr;

    iget-object p2, p0, Lo/apr;->e:Landroid/os/Handler;

    iget-object p3, p0, Lo/apr;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lo/apr;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/apr;->_immediate:Lo/apr;

    :goto_0
    iput-object p1, p0, Lo/apr;->b:Lo/apr;

    return-void
.end method


# virtual methods
.method public a(Lo/alj;)Z
    .locals 2

    .line 128
    iget-boolean p1, p0, Lo/apr;->g:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lo/apr;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public c(Lo/alj;Ljava/lang/Runnable;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lo/apr;->e:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 159
    instance-of v0, p1, Lo/apr;

    if-eqz v0, :cond_0

    check-cast p1, Lo/apr;

    iget-object p1, p1, Lo/apr;->e:Landroid/os/Handler;

    iget-object v0, p0, Lo/apr;->e:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 160
    iget-object v0, p0, Lo/apr;->e:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    iget-object v0, p0, Lo/apr;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    iget-boolean v1, p0, Lo/apr;->g:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/apr;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [immediate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lo/apr;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method
