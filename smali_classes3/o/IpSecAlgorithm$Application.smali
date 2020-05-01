.class public final Lo/IpSecAlgorithm$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IpSecTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IpSecAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private final b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lo/KeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lo/LinkProperties;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:[I

.field private j:Lo/LocalSocket;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/ValidationEnforcer;)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v0, Lo/LinkAddress;->c:Lo/LinkProperties$ActionBar;

    iput-object v0, p0, Lo/IpSecAlgorithm$Application;->d:Lo/LinkProperties;

    const/4 v0, 0x1

    .line 140
    iput v0, p0, Lo/IpSecAlgorithm$Application;->f:I

    .line 143
    sget-object v0, Lo/LocalSocket;->d:Lo/LocalSocket;

    iput-object v0, p0, Lo/IpSecAlgorithm$Application;->j:Lo/LocalSocket;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lo/IpSecAlgorithm$Application;->h:Z

    .line 145
    iput-boolean v0, p0, Lo/IpSecAlgorithm$Application;->g:Z

    .line 148
    iput-object p1, p0, Lo/IpSecAlgorithm$Application;->b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    return-void
.end method

.method static synthetic a(Lo/IpSecAlgorithm$Application;)Lo/LinkProperties;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->d:Lo/LinkProperties;

    return-object p0
.end method

.method static synthetic b(Lo/IpSecAlgorithm$Application;)Landroid/os/Bundle;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic c(Lo/IpSecAlgorithm$Application;)Lo/LocalSocket;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->j:Lo/LocalSocket;

    return-object p0
.end method

.method static synthetic d(Lo/IpSecAlgorithm$Application;)Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lo/IpSecAlgorithm$Application;)Ljava/lang/Class;
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->c:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic f(Lo/IpSecAlgorithm$Application;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lo/IpSecAlgorithm$Application;->h:Z

    return p0
.end method

.method static synthetic h(Lo/IpSecAlgorithm$Application;)I
    .locals 0

    .line 133
    iget p0, p0, Lo/IpSecAlgorithm$Application;->f:I

    return p0
.end method

.method static synthetic i(Lo/IpSecAlgorithm$Application;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lo/IpSecAlgorithm$Application;->g:Z

    return p0
.end method

.method static synthetic j(Lo/IpSecAlgorithm$Application;)[I
    .locals 0

    .line 133
    iget-object p0, p0, Lo/IpSecAlgorithm$Application;->i:[I

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lo/IpSecAlgorithm$Application;->h:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Lo/IpSecAlgorithm$Application;
    .locals 0

    .line 222
    iput-object p1, p0, Lo/IpSecAlgorithm$Application;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()[I
    .locals 1

    .line 286
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->i:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_0
    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 304
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public d(Ljava/lang/Class;)Lo/IpSecAlgorithm$Application;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lo/KeepalivePacketData;",
            ">;)",
            "Lo/IpSecAlgorithm$Application;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lo/IpSecAlgorithm$Application;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public d()Lo/LocalSocket;
    .locals 1

    .line 322
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->j:Lo/LocalSocket;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)Lo/IpSecAlgorithm$Application;
    .locals 0

    .line 311
    iput-object p1, p0, Lo/IpSecAlgorithm$Application;->a:Landroid/os/Bundle;

    return-object p0
.end method

.method public f()Lo/LinkProperties;
    .locals 1

    .line 233
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->d:Lo/LinkProperties;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lo/IpSecAlgorithm$Application;->g:Z

    return v0
.end method

.method public h()Lo/IpSecAlgorithm;
    .locals 2

    .line 186
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->b:Lcom/firebase/jobdispatcher/ValidationEnforcer;

    invoke-virtual {v0, p0}, Lcom/firebase/jobdispatcher/ValidationEnforcer;->b(Lo/IpSecTransform;)V

    .line 188
    new-instance v0, Lo/IpSecAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/IpSecAlgorithm;-><init>(Lo/IpSecAlgorithm$Application;Lo/IpSecAlgorithm$5;)V

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 251
    iget v0, p0, Lo/IpSecAlgorithm$Application;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lo/IpSecAlgorithm$Application;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
