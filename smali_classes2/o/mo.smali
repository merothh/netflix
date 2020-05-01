.class public abstract Lo/mo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static l:Ljava/lang/String;

.field private static r:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field protected c:Z

.field private final d:Ljava/lang/String;

.field protected e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field protected final f:Lo/lc;

.field public final g:Lo/kF;

.field public final h:Lo/kO;

.field protected final i:Lo/zE;

.field public final j:Lo/kH;

.field private k:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lo/ly;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p7}, Lo/mo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V

    .line 55
    iput-object p4, p0, Lo/mo;->k:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lo/mo;->m:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lo/mo;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/lc;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/mo;->d:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lo/mo;->b:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lo/mo;->a:Ljava/lang/String;

    .line 43
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/lc;

    iput-object p1, p0, Lo/mo;->f:Lo/lc;

    .line 44
    invoke-virtual {p4}, Lo/lc;->f()Lo/kH;

    move-result-object p1

    iput-object p1, p0, Lo/mo;->j:Lo/kH;

    .line 45
    invoke-virtual {p4}, Lo/lc;->h()Lo/zE;

    move-result-object p1

    iput-object p1, p0, Lo/mo;->i:Lo/zE;

    .line 46
    invoke-virtual {p4}, Lo/lc;->j()Lo/kO;

    move-result-object p1

    iput-object p1, p0, Lo/mo;->h:Lo/kO;

    .line 47
    invoke-virtual {p4}, Lo/lc;->a()Lo/kF;

    move-result-object p1

    iput-object p1, p0, Lo/mo;->g:Lo/kF;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 129
    sput-object p0, Lo/mo;->l:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 132
    sput-object p0, Lo/mo;->r:Ljava/lang/String;

    return-void
.end method

.method protected static o()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lo/mo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 140
    sget-object v0, Lo/mo;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lo/ly;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/mo;->o:Lo/ly;

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/mo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lo/mo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-object p3, p0, Lo/mo;->k:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lo/mo;->m:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lo/mo;->n:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lo/mo;->c:Z

    .line 167
    :cond_0
    iget-object p1, p0, Lo/mo;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/logging/connection/MdxConnectionLogblobLogger;->c(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    .line 175
    instance-of p1, p0, Lo/mp;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lo/mo;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    .line 64
    iget-object v0, p0, Lo/mo;->d:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lo/mo;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 71
    :cond_1
    iget-object v0, p0, Lo/mo;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_2

    instance-of v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-nez v3, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .line 110
    iget-object v0, p0, Lo/mo;->e:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/mo;->a:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lo/mo;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Lo/mo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/mo;->c(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {p1}, Lo/mo;->n()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/mo;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/mo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/mo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lo/mo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/mo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lo/kH;
    .locals 1

    .line 111
    iget-object v0, p0, Lo/mo;->j:Lo/kH;

    return-object v0
.end method

.method public l()Lo/lc;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/mo;->f:Lo/lc;

    return-object v0
.end method

.method protected m()Lo/ly;
    .locals 2

    .line 122
    iget-object v0, p0, Lo/mo;->o:Lo/ly;

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lo/mo;->o:Lo/ly;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/mo;->a:Ljava/lang/String;

    return-object v0
.end method
