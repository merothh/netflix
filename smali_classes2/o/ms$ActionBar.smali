.class public Lo/ms$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Lo/kx;

.field private h:Z

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lo/ms$ActionBar;->h:Z

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lo/ms$ActionBar;->g:Lo/kx;

    .line 56
    iput-object p1, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 57
    iput-object p3, p0, Lo/ms$ActionBar;->j:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p3, -0x2f71c3e

    const/4 v1, 0x1

    if-eq p1, p3, :cond_1

    const p3, 0x5a3fc7c4

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "PROFILE_MISMATCH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "USER_MISMATCH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    .line 69
    iput-object p2, p0, Lo/ms$ActionBar;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "97"

    .line 66
    iput-object p1, p0, Lo/ms$ActionBar;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string p1, "33"

    .line 63
    iput-object p1, p0, Lo/ms$ActionBar;->d:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lo/ms$ActionBar;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-boolean p4, p0, Lo/ms$ActionBar;->h:Z

    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lo/ms$ActionBar;->h:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lo/ms$ActionBar;->g:Lo/kx;

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    iput-object v0, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 40
    iput-object p1, p0, Lo/ms$ActionBar;->c:[B

    .line 41
    iput-object p2, p0, Lo/ms$ActionBar;->e:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lo/ms$ActionBar;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;Lo/kx;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/ms$ActionBar;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p4, p0, Lo/ms$ActionBar;->g:Lo/kx;

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lo/ms$ActionBar;->h:Z

    .line 51
    invoke-virtual {p0}, Lo/ms$ActionBar;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->w:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    :goto_0
    iput-object p1, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lo/ms$ActionBar;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ms$ActionBar;->g:Lo/kx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/kx;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    return-object v0
.end method

.method public c()Lo/kx;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/ms$ActionBar;->g:Lo/kx;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lo/ms$ActionBar;->h:Z

    return v0
.end method

.method public e()Z
    .locals 2

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->d:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    iget-object v1, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 86
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->x:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    iget-object v1, p0, Lo/ms$ActionBar;->a:Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;

    .line 87
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lo/ms$ActionBar;->c:[B

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/ms$ActionBar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lo/ms$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/ms$ActionBar;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/ms$ActionBar;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lo/ms$ActionBar;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ms$ActionBar;->j:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{errorCode=%s, errorString=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
