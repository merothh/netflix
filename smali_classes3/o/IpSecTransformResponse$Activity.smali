.class final Lo/IpSecTransformResponse$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IpSecTransformResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lo/LinkProperties;

.field private e:Ljava/lang/String;

.field private f:Z

.field private final g:Landroid/os/Bundle;

.field private h:Lo/LocalSocket;

.field private i:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/IpSecTransformResponse$Activity;->g:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lo/IpSecTransformResponse$Activity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lo/IpSecTransformResponse$Activity;)Lo/LocalSocket;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->h:Lo/LocalSocket;

    return-object p0
.end method

.method static synthetic c(Lo/IpSecTransformResponse$Activity;)Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lo/IpSecTransformResponse$Activity;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lo/IpSecTransformResponse$Activity;->b:Z

    return p0
.end method

.method static synthetic e(Lo/IpSecTransformResponse$Activity;)Lo/LinkProperties;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->d:Lo/LinkProperties;

    return-object p0
.end method

.method static synthetic f(Lo/IpSecTransformResponse$Activity;)I
    .locals 0

    .line 115
    iget p0, p0, Lo/IpSecTransformResponse$Activity;->a:I

    return p0
.end method

.method static synthetic h(Lo/IpSecTransformResponse$Activity;)[I
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->i:[I

    return-object p0
.end method

.method static synthetic i(Lo/IpSecTransformResponse$Activity;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lo/IpSecTransformResponse$Activity;->f:Z

    return p0
.end method

.method static synthetic j(Lo/IpSecTransformResponse$Activity;)Landroid/os/Bundle;
    .locals 0

    .line 115
    iget-object p0, p0, Lo/IpSecTransformResponse$Activity;->g:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lo/IpSecTransformResponse$Activity;
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lo/IpSecTransformResponse$Activity;->g:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 154
    iput-object p1, p0, Lo/IpSecTransformResponse$Activity;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lo/LinkProperties;)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 159
    iput-object p1, p0, Lo/IpSecTransformResponse$Activity;->d:Lo/LinkProperties;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 149
    iput-object p1, p0, Lo/IpSecTransformResponse$Activity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 164
    iput-boolean p1, p0, Lo/IpSecTransformResponse$Activity;->b:Z

    return-object p0
.end method

.method public c(I)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 169
    iput p1, p0, Lo/IpSecTransformResponse$Activity;->a:I

    return-object p0
.end method

.method public c(Z)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 191
    iput-boolean p1, p0, Lo/IpSecTransformResponse$Activity;->f:Z

    return-object p0
.end method

.method public d(Lo/LocalSocket;)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 186
    iput-object p1, p0, Lo/IpSecTransformResponse$Activity;->h:Lo/LocalSocket;

    return-object p0
.end method

.method public d([I)Lo/IpSecTransformResponse$Activity;
    .locals 0

    .line 174
    iput-object p1, p0, Lo/IpSecTransformResponse$Activity;->i:[I

    return-object p0
.end method

.method d()Lo/IpSecTransformResponse;
    .locals 2

    .line 142
    iget-object v0, p0, Lo/IpSecTransformResponse$Activity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IpSecTransformResponse$Activity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/IpSecTransformResponse$Activity;->d:Lo/LinkProperties;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lo/IpSecTransformResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/IpSecTransformResponse;-><init>(Lo/IpSecTransformResponse$Activity;Lo/IpSecTransformResponse$3;)V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required fields were not populated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
