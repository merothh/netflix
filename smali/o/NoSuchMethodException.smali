.class public final Lo/NoSuchMethodException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private b:Lo/OutOfMemoryError;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lo/OutOfMemoryError;Z)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    .line 46
    iput-object p1, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    .line 47
    iget-object v0, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    invoke-virtual {p1}, Lo/OutOfMemoryError;->c()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "selector"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    iget-object p1, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    const-string v0, "activeScan"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .locals 2

    .line 64
    iget-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lo/OutOfMemoryError;->e(Landroid/os/Bundle;)Lo/OutOfMemoryError;

    move-result-object v0

    iput-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    .line 66
    iget-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lo/OutOfMemoryError;->a:Lo/OutOfMemoryError;

    iput-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lo/OutOfMemoryError;
    .locals 1

    .line 59
    invoke-direct {p0}, Lo/NoSuchMethodException;->d()V

    .line 60
    iget-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    return-object v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lo/NoSuchMethodException;->c:Landroid/os/Bundle;

    const-string v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 85
    invoke-direct {p0}, Lo/NoSuchMethodException;->d()V

    .line 86
    iget-object v0, p0, Lo/NoSuchMethodException;->b:Lo/OutOfMemoryError;

    invoke-virtual {v0}, Lo/OutOfMemoryError;->d()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Lo/NoSuchMethodException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lo/NoSuchMethodException;

    .line 93
    invoke-virtual {p0}, Lo/NoSuchMethodException;->a()Lo/OutOfMemoryError;

    move-result-object v0

    invoke-virtual {p1}, Lo/NoSuchMethodException;->a()Lo/OutOfMemoryError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/OutOfMemoryError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/NoSuchMethodException;->c()Z

    move-result v0

    invoke-virtual {p1}, Lo/NoSuchMethodException;->c()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 101
    invoke-virtual {p0}, Lo/NoSuchMethodException;->a()Lo/OutOfMemoryError;

    move-result-object v0

    invoke-virtual {v0}, Lo/OutOfMemoryError;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lo/NoSuchMethodException;->c()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryRequest{ selector="

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/NoSuchMethodException;->a()Lo/OutOfMemoryError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeScan="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/NoSuchMethodException;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/NoSuchMethodException;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
