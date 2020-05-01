.class public final Lo/IpSecAlgorithm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IpSecTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IpSecAlgorithm$Application;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Lo/LinkProperties;

.field private final e:Lo/LocalSocket;

.field private final f:Z

.field private final h:Z

.field private final i:[I

.field private j:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lo/IpSecAlgorithm$Application;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->e(Lo/IpSecAlgorithm$Application;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->e(Lo/IpSecAlgorithm$Application;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/IpSecAlgorithm;->c:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->b(Lo/IpSecAlgorithm$Application;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecAlgorithm;->j:Landroid/os/Bundle;

    .line 42
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->d(Lo/IpSecAlgorithm$Application;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecAlgorithm;->a:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->a(Lo/IpSecAlgorithm$Application;)Lo/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecAlgorithm;->d:Lo/LinkProperties;

    .line 44
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->c(Lo/IpSecAlgorithm$Application;)Lo/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecAlgorithm;->e:Lo/LocalSocket;

    .line 45
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->h(Lo/IpSecAlgorithm$Application;)I

    move-result v0

    iput v0, p0, Lo/IpSecAlgorithm;->b:I

    .line 46
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->i(Lo/IpSecAlgorithm$Application;)Z

    move-result v0

    iput-boolean v0, p0, Lo/IpSecAlgorithm;->f:Z

    .line 47
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->j(Lo/IpSecAlgorithm$Application;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->j(Lo/IpSecAlgorithm$Application;)[I

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_1
    iput-object v0, p0, Lo/IpSecAlgorithm;->i:[I

    .line 48
    invoke-static {p1}, Lo/IpSecAlgorithm$Application;->f(Lo/IpSecAlgorithm$Application;)Z

    move-result p1

    iput-boolean p1, p0, Lo/IpSecAlgorithm;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/IpSecAlgorithm$Application;Lo/IpSecAlgorithm$5;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/IpSecAlgorithm;-><init>(Lo/IpSecAlgorithm$Application;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lo/IpSecAlgorithm;->h:Z

    return v0
.end method

.method public b()[I
    .locals 1

    .line 57
    iget-object v0, p0, Lo/IpSecAlgorithm;->i:[I

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/IpSecAlgorithm;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Lo/LocalSocket;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/IpSecAlgorithm;->e:Lo/LocalSocket;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/IpSecAlgorithm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lo/LinkProperties;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/IpSecAlgorithm;->d:Lo/LinkProperties;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lo/IpSecAlgorithm;->f:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 109
    iget v0, p0, Lo/IpSecAlgorithm;->b:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/IpSecAlgorithm;->c:Ljava/lang/String;

    return-object v0
.end method
