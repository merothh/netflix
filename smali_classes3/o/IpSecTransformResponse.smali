.class public final Lo/IpSecTransformResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IpSecTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IpSecTransformResponse$Activity;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lo/LinkProperties;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Landroid/os/Bundle;

.field private final g:Z

.field private final h:[I

.field private final j:Lo/LocalSocket;


# direct methods
.method private constructor <init>(Lo/IpSecTransformResponse$Activity;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->a(Lo/IpSecTransformResponse$Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->d:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->c(Lo/IpSecTransformResponse$Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->e:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->e(Lo/IpSecTransformResponse$Activity;)Lo/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->b:Lo/LinkProperties;

    .line 56
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->b(Lo/IpSecTransformResponse$Activity;)Lo/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->j:Lo/LocalSocket;

    .line 57
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->d(Lo/IpSecTransformResponse$Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lo/IpSecTransformResponse;->a:Z

    .line 58
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->f(Lo/IpSecTransformResponse$Activity;)I

    move-result v0

    iput v0, p0, Lo/IpSecTransformResponse;->c:I

    .line 59
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->h(Lo/IpSecTransformResponse$Activity;)[I

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->h:[I

    .line 60
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->j(Lo/IpSecTransformResponse$Activity;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lo/IpSecTransformResponse;->f:Landroid/os/Bundle;

    .line 61
    invoke-static {p1}, Lo/IpSecTransformResponse$Activity;->i(Lo/IpSecTransformResponse$Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lo/IpSecTransformResponse;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lo/IpSecTransformResponse$Activity;Lo/IpSecTransformResponse$3;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lo/IpSecTransformResponse;-><init>(Lo/IpSecTransformResponse$Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lo/IpSecTransformResponse;->g:Z

    return v0
.end method

.method public b()[I
    .locals 1

    .line 95
    iget-object v0, p0, Lo/IpSecTransformResponse;->h:[I

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/IpSecTransformResponse;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Lo/LocalSocket;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/IpSecTransformResponse;->j:Lo/LocalSocket;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/IpSecTransformResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    check-cast p1, Lo/IpSecTransformResponse;

    .line 211
    iget-object v2, p0, Lo/IpSecTransformResponse;->d:Ljava/lang/String;

    iget-object v3, p1, Lo/IpSecTransformResponse;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/IpSecTransformResponse;->e:Ljava/lang/String;

    iget-object v3, p1, Lo/IpSecTransformResponse;->e:Ljava/lang/String;

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/IpSecTransformResponse;->b:Lo/LinkProperties;

    iget-object p1, p1, Lo/IpSecTransformResponse;->b:Lo/LinkProperties;

    .line 213
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Lo/LinkProperties;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/IpSecTransformResponse;->b:Lo/LinkProperties;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lo/IpSecTransformResponse;->a:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 218
    iget-object v0, p0, Lo/IpSecTransformResponse;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-object v1, p0, Lo/IpSecTransformResponse;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-object v1, p0, Lo/IpSecTransformResponse;->b:Lo/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()I
    .locals 1

    .line 84
    iget v0, p0, Lo/IpSecTransformResponse;->c:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lo/IpSecTransformResponse;->e:Ljava/lang/String;

    return-object v0
.end method
